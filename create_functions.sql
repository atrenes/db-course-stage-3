create or replace function do_not_change() returns trigger as
$$
begin
    raise exception 'This table must not be redacted.';
end;
$$
    language plpgsql;

create or replace function update_kage() returns trigger as
$$
begin
    if ((select rank_id from ninja where ninja.id = new.kage) >= 3) then
        update ninja
        set rank_id = 4
        where ninja.id = new.kage;

        update ninja
        set rank_id = 3
        where ninja.id = old.kage;

        return new;
    else
        raise exception 'Ninja rank too low!';
    end if;
end;
$$
    language plpgsql;

create or replace trigger clan_enum
    before insert or update or delete on CLAN
execute procedure do_not_change();

create or replace trigger technique_enum
    before insert or update or delete on TECHNIQUE
execute procedure do_not_change();

create or replace trigger eyes_enum
    before insert or update or delete on EYES
execute procedure do_not_change();

create or replace trigger crime_rank_enum
    before insert or update or delete on CRIME_RANK
execute procedure do_not_change();

create or replace trigger ninja_rank_enum
    before insert or update or delete on NINJA_RANK
execute procedure do_not_change();

create or replace trigger weapon_type_enum
    before insert or update or delete on WEAPON_TYPE
execute procedure do_not_change();

create or replace trigger wanted_status_enum
    before insert or update or delete on WANTED_STATUS
execute procedure do_not_change();

create or replace trigger country_enum
    before insert or update or delete on COUNTRY
execute procedure do_not_change();

create or replace trigger village_enum
    before insert or delete on VILLAGE
execute procedure do_not_change();

create or replace trigger village_change_kage
    before update on VILLAGE
execute procedure update_kage();