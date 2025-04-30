TYPE=VIEW
query=select `r1`.`id` AS `rom_id`,`r2`.`id` AS `sibling_rom_id`,`r1`.`platform_id` AS `platform_id`,current_timestamp() AS `created_at`,current_timestamp() AS `updated_at`,case when `r1`.`igdb_id` <=> `r2`.`igdb_id` then `r1`.`igdb_id` end AS `igdb_id`,case when `r1`.`moby_id` <=> `r2`.`moby_id` then `r1`.`moby_id` end AS `moby_id` from (`romm`.`roms` `r1` join `romm`.`roms` `r2` on(`r1`.`platform_id` = `r2`.`platform_id` and `r1`.`id` <> `r2`.`id` and (`r1`.`igdb_id` = `r2`.`igdb_id` and `r1`.`igdb_id` is not null or `r1`.`moby_id` = `r2`.`moby_id` and `r1`.`moby_id` is not null)))
md5=b0f286c2c533346c6383a89d493701d4
updatable=1
algorithm=0
definer_user=romm-user
definer_host=%
suid=2
with_check_option=0
timestamp=0001745946211131187
create-version=2
source=SELECT\n                r1.id AS rom_id,\n                r2.id AS sibling_rom_id,\n                r1.platform_id AS platform_id,\n                NOW() AS created_at,\n                NOW() AS updated_at,\n                CASE WHEN r1.igdb_id <=> r2.igdb_id THEN r1.igdb_id END AS igdb_id,\n                CASE WHEN r1.moby_id <=> r2.moby_id THEN r1.moby_id END AS moby_id\n            FROM\n                roms r1\n            JOIN\n                roms r2\n            ON\n                r1.platform_id = r2.platform_id\n                AND r1.id != r2.id\n                AND (\n                    (r1.igdb_id = r2.igdb_id AND r1.igdb_id IS NOT NULL)\n                    OR\n                    (r1.moby_id = r2.moby_id AND r1.moby_id IS NOT NULL)\n                )
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `r1`.`id` AS `rom_id`,`r2`.`id` AS `sibling_rom_id`,`r1`.`platform_id` AS `platform_id`,current_timestamp() AS `created_at`,current_timestamp() AS `updated_at`,case when `r1`.`igdb_id` <=> `r2`.`igdb_id` then `r1`.`igdb_id` end AS `igdb_id`,case when `r1`.`moby_id` <=> `r2`.`moby_id` then `r1`.`moby_id` end AS `moby_id` from (`romm`.`roms` `r1` join `romm`.`roms` `r2` on(`r1`.`platform_id` = `r2`.`platform_id` and `r1`.`id` <> `r2`.`id` and (`r1`.`igdb_id` = `r2`.`igdb_id` and `r1`.`igdb_id` is not null or `r1`.`moby_id` = `r2`.`moby_id` and `r1`.`moby_id` is not null)))
mariadb-version=100528
