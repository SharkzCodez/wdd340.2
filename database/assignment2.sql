INSERT INTO public.account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

UPDATE public.account
SET account_type = 'Admin'
WHERE account_firstname LIKE '%Tony%';

DELETE FROM public.account
WHERE account_firstname LIKE '%Tony%';

UPDATE public.inventory
SET inv_description = REPLACE(inv_description, 'the small interiors', 'a huge interior')
WHERE inv_model LIKE '%Hummer%';

SELECT i.inv_make, i.inv_model, c.classification_name
FROM public.inventory i
INNER JOIN public.classification c ON i.classification_id = c.classification_id
WHERE c.classification_name = 'Sport';

UPDATE public.inventory
SET inv_image = REPLACE(inv_image, 'images/', 'images/vehicles/')
WHERE inv_image LIKE '%images/%';

UPDATE public.inventory
SET inv_thumbnail = REPLACE(inv_image, 'images/', 'images/vehicles/')
WHERE inv_thumbnail LIKE '%images/%';