create table "public"."testtable" (
    "id" bigint generated by default as identity not null,
    "created_at" timestamp with time zone not null default now()
);


alter table "public"."testtable" enable row level security;

CREATE UNIQUE INDEX testtable_pkey ON public.testtable USING btree (id);

alter table "public"."testtable" add constraint "testtable_pkey" PRIMARY KEY using index "testtable_pkey";

grant delete on table "public"."testtable" to "anon";

grant insert on table "public"."testtable" to "anon";

grant references on table "public"."testtable" to "anon";

grant select on table "public"."testtable" to "anon";

grant trigger on table "public"."testtable" to "anon";

grant truncate on table "public"."testtable" to "anon";

grant update on table "public"."testtable" to "anon";

grant delete on table "public"."testtable" to "authenticated";

grant insert on table "public"."testtable" to "authenticated";

grant references on table "public"."testtable" to "authenticated";

grant select on table "public"."testtable" to "authenticated";

grant trigger on table "public"."testtable" to "authenticated";

grant truncate on table "public"."testtable" to "authenticated";

grant update on table "public"."testtable" to "authenticated";

grant delete on table "public"."testtable" to "service_role";

grant insert on table "public"."testtable" to "service_role";

grant references on table "public"."testtable" to "service_role";

grant select on table "public"."testtable" to "service_role";

grant trigger on table "public"."testtable" to "service_role";

grant truncate on table "public"."testtable" to "service_role";

grant update on table "public"."testtable" to "service_role";


