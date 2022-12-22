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
end;
$village_change_kage$ language plpgsql;

create or replace function proceed_crime(obj crime_to_ninja) returns trigger as
$$
declare
    ninja_in_list integer;
begin
    update ninja
    set is_criminal = true
    where ninja_id = obj.ninja_id;

    ninja_in_list = (select wanted_ninja_id from wanted_list where obj.ninja_id = wanted_ninja_id);
    if (ninja_in_list is not NULL) then
        insert into wanted_list(wanted_ninja_id, is_captured, executor_ninja_id, description, date_of_search_start, date_of_capture)
        values (obj.ninja_id, false, NULL, '', current_timestamp(), )
    end if;
end;
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

create trigger wanted_status_enum
    before insert or update or delete on WANTED_STATUS
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
    execute procedure proceed_crime(new);