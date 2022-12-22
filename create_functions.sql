create or replace function do_not_change() returns trigger as
$$
begin
    raise exception 'This table must not be redacted.';
end;
$$ language plpgsql;

create or replace function update_kage() returns trigger as
$village_change_kage$
declare ninja_rank integer;
begin
    ninja_rank = (select rank_id from ninja where ninja.id = new.kage);
    if (ninja_rank = 3) then
        update ninja
        set rank_id = 4
        where ninja.id = new.kage;

        update ninja
        set rank_id = 3
        where ninja.id = old.kage;

        return new;
    else
        raise exception 'Ninja rank is too low or ninja is already Kage!';
    end if;
end
$village_change_kage$ language plpgsql;

create or replace function proceed_crime() returns trigger as
$$
declare
    ninja_in_list integer;
    description varchar(100);
    crime_rank integer;
    crim_group integer;
begin
    update ninja
    set is_criminal = true
    where id = new.ninja_id;

    ninja_in_list = (select wanted_ninja_id from wanted_list where new.ninja_id = wanted_ninja_id);
    if (ninja_in_list is NULL) then
        crime_rank = (select crime_rank_id from crime where crime.id = new.crime_id);
        if (crime_rank = 1) then
            description = 'Мелкий преступник. Не приоритетная цель.';
        end if;
        if (crime_rank = 2) then
            description = 'Опасный преступник. Нужно поймать побыстрее.';
        end if;
        if (crime_rank = 3) then
            description = 'Преступник международного класса. Ловить с осторожностью.';
        end if;

        insert into wanted_list(wanted_ninja_id, is_captured, executor_ninja_id, description, date_of_search_start, date_of_capture)
        values (new.ninja_id, false, NULL, description, current_date, NULL);
    end if;

    crim_group = (select criminal_group_id from ninja where new.ninja_id = id);
    update criminal_group set crime_num = crime_num + 1 where id = crim_group;

    return new;
end
$$ language plpgsql;

CREATE TRIGGER clan_enum
    before insert or update or delete on CLAN
execute procedure do_not_change();

create trigger technique_enum
    before insert or update or delete on TECHNIQUE
execute procedure do_not_change();

create trigger eyes_enum
    before insert or update or delete on EYES
execute procedure do_not_change();

create trigger crime_rank_enum
    before insert or update or delete on CRIME_RANK
execute procedure do_not_change();

create trigger ninja_rank_enum
    before insert or update or delete on NINJA_RANK
execute procedure do_not_change();

create trigger weapon_type_enum
    before insert or update or delete on WEAPON_TYPE
execute procedure do_not_change();

create trigger country_enum
    before insert or update or delete on COUNTRY
execute procedure do_not_change();

create trigger village_enum
    before insert or delete on VILLAGE
execute procedure do_not_change();

create trigger village_change_kage
    before update on VILLAGE
    for each row execute procedure update_kage();

create trigger crime_commited
    before insert on crime_to_ninja
    for each row execute procedure proceed_crime();