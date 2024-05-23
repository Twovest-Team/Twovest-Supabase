alter table "public"."looks_has_products" add column "id_offer" bigint;

alter table "public"."looks_has_products" add constraint "public_looks_has_products_id_offer_fkey" FOREIGN KEY (id_offer) REFERENCES offers(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."looks_has_products" validate constraint "public_looks_has_products_id_offer_fkey";

drop function if exists "public"."insert_look_and_relations"(id_user integer, gender integer, url_image text, id_products integer[], id_offers integer[], id_styles integer[]);

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.insert_look_and_relations(id_user integer, gender integer, url_image text, id_products integer[], id_offers integer[], id_styles integer[])
 RETURNS void
 LANGUAGE plpgsql
AS $function$DECLARE
    new_look_id INT;
    i INT;
BEGIN
    -- Insert dados na tabela looks
    INSERT INTO looks (id_user, gender, url_image)
    VALUES (id_user, gender, url_image)
    RETURNING id INTO new_look_id;

    -- Loop para inserir os dados na tabela looks_has_products
    FOR i IN 1..array_length(id_products, 1) LOOP
            INSERT INTO looks_has_products (id_look, id_product, id_offer)
            VALUES (new_look_id, id_products[i], id_offers[i]);
    END LOOP;

    -- Loop para inserir os dados na tabela looks_has_styles
    FOR i IN 1..array_length(id_styles, 1) LOOP
        INSERT INTO looks_has_styles (id_look, id_style)
        VALUES (new_look_id, id_styles[i]);
    END LOOP;

END;$function$
;

CREATE TABLE teste (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(9),
    idade INT,
    email VARCHAR(9)
);