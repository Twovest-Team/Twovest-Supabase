drop function if exists "public"."insert_look_and_relations"(id_user integer, gender integer, url_image text, id_products integer[], id_styles integer[]);

alter table "public"."looks" alter column "submission_state" set default '2'::bigint;

alter table "public"."purchases" alter column "delivery_date" set default now();

alter table "public"."purchases" alter column "points_earned" set default '0'::bigint;

alter table "public"."purchases" alter column "shipping_cost" set default '0'::numeric;

alter table "public"."purchases" alter column "tracking_code" set default 'CTT-551818'::text;


