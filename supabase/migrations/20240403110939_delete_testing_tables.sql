drop policy "Enable read access for all users" on "public"."testing-table";

revoke delete on table "public"."testing-table" from "anon";

revoke insert on table "public"."testing-table" from "anon";

revoke references on table "public"."testing-table" from "anon";

revoke select on table "public"."testing-table" from "anon";

revoke trigger on table "public"."testing-table" from "anon";

revoke truncate on table "public"."testing-table" from "anon";

revoke update on table "public"."testing-table" from "anon";

revoke delete on table "public"."testing-table" from "authenticated";

revoke insert on table "public"."testing-table" from "authenticated";

revoke references on table "public"."testing-table" from "authenticated";

revoke select on table "public"."testing-table" from "authenticated";

revoke trigger on table "public"."testing-table" from "authenticated";

revoke truncate on table "public"."testing-table" from "authenticated";

revoke update on table "public"."testing-table" from "authenticated";

revoke delete on table "public"."testing-table" from "service_role";

revoke insert on table "public"."testing-table" from "service_role";

revoke references on table "public"."testing-table" from "service_role";

revoke select on table "public"."testing-table" from "service_role";

revoke trigger on table "public"."testing-table" from "service_role";

revoke truncate on table "public"."testing-table" from "service_role";

revoke update on table "public"."testing-table" from "service_role";

alter table "public"."testing-table" drop constraint "testing-table_pkey";

drop index if exists "public"."testing-table_pkey";

drop table "public"."testing-table";


