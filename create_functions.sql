
create or replace function do_not_change() returns trigger as
$$
begin
    raise exception 'This table must not be redacted.';
end;
$$
    language plpgsql;

create or replace function update_kage() returns trigger as
$$
declare
    rank_of_ninja_id integer;
    rank_jounin integer;
    rank_kage integer;
begin
    rank_of_ninja_id = (select RANK_ID from NINJA where NINJA.ID = new.KAGE);
    rank_jounin = (select ID from NINJA_RANK where NINJA_RANK.TYPE = 'Джоунин');
    rank_kage = (select ID from NINJA_RANK where NINJA_RANK.TYPE = 'Кагэ');
    if (rank_of_ninja_id = rank_jounin) then
        update NINJA set RANK_ID = 4 where NINJA.ID = new.KAGE;
    end if;
    if (rank_of_ninja_id <> rank_jounin) then
        raise exception 'Ninja rank is too low to become kage!';
    end if;
    return new;
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