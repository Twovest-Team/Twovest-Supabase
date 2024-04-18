alter table "public"."purchases" alter column "shipping_cost" drop not null;

alter table "public"."purchases" alter column "points_earned" drop not null;


create policy "Enable insert for authenticated users only"
on "public"."purchases_has_offers"
as PERMISSIVE
for INSERT
to authenticated
with check (
  true
);


set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.create_purchase(total numeric, id_user integer, id_offer integer[])
 RETURNS bigint
 LANGUAGE plpgsql
AS $function$declare
  id_purchase bigint;
  i int;
begin
  insert into purchases(total, id_user)
  values (create_purchase.total, create_purchase.id_user)
  returning id into id_purchase;

  for i in 1..coalesce(array_length(create_purchase.id_offer, 1), 0) loop
    insert into purchases_has_offers(id_purchase, id_offer)
    values (id_purchase, create_purchase.id_offer[i]);
  end loop;

  return id_purchase;
end;$function$
;




