PGDMP      
                |            hack 5-6    16.4    16.4 0    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            :           1262    16476    hack 5-6    DATABASE     �   CREATE DATABASE "hack 5-6" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "hack 5-6";
                postgres    false            �            1259    16520 	   countries    TABLE     d   CREATE TABLE public.countries (
    id_country integer NOT NULL,
    name character varying(100)
);
    DROP TABLE public.countries;
       public         heap    postgres    false            �            1259    16525 	   customers    TABLE     �   CREATE TABLE public.customers (
    email character varying(100) NOT NULL,
    id_country integer,
    id_role integer,
    name character varying(100),
    age integer,
    password character varying(100),
    physical_address character varying(200)
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    16477 	   discounts    TABLE     �   CREATE TABLE public.discounts (
    id_discount integer NOT NULL,
    status character varying(50),
    percentage numeric(4,2),
    name character varying(255)
);
    DROP TABLE public.discounts;
       public         heap    postgres    false            �            1259    16515    invoice_status    TABLE     q   CREATE TABLE public.invoice_status (
    id_invoice_status integer NOT NULL,
    status character varying(50)
);
 "   DROP TABLE public.invoice_status;
       public         heap    postgres    false            �            1259    16505    invoices    TABLE     �   CREATE TABLE public.invoices (
    id_invoice integer NOT NULL,
    id_customer integer,
    date date,
    total_to_pay numeric(10,2),
    id_payment integer,
    id_invoice_status integer
);
    DROP TABLE public.invoices;
       public         heap    postgres    false            �            1259    16482    offers    TABLE     >   CREATE TABLE public.offers (
    id_offer integer NOT NULL
);
    DROP TABLE public.offers;
       public         heap    postgres    false            �            1259    16510    orders    TABLE     �   CREATE TABLE public.orders (
    id_order integer NOT NULL,
    id_invoice integer,
    id_product integer,
    detail character varying(200),
    amount integer,
    price numeric(10,2)
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16500    payments    TABLE     b   CREATE TABLE public.payments (
    id_payment integer NOT NULL,
    type character varying(50)
);
    DROP TABLE public.payments;
       public         heap    postgres    false            �            1259    16487    products    TABLE     V  CREATE TABLE public.products (
    id_product integer NOT NULL,
    name character varying(100),
    details character varying(200),
    minimum_stock integer,
    maximum_stock integer,
    current_stock integer,
    price numeric(10,2),
    price_with_tax numeric(10,2),
    id_discount integer,
    id_offer integer,
    id_tax integer
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16497    products_customers    TABLE     \   CREATE TABLE public.products_customers (
    id_product integer,
    id_customer integer
);
 &   DROP TABLE public.products_customers;
       public         heap    postgres    false            �            1259    16532    roles    TABLE     \   CREATE TABLE public.roles (
    id_role integer NOT NULL,
    name character varying(50)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16492    taxes    TABLE     X   CREATE TABLE public.taxes (
    id_tax integer NOT NULL,
    percentage numeric(4,2)
);
    DROP TABLE public.taxes;
       public         heap    postgres    false            2          0    16520 	   countries 
   TABLE DATA           5   COPY public.countries (id_country, name) FROM stdin;
    public          postgres    false    224   �7       3          0    16525 	   customers 
   TABLE DATA           f   COPY public.customers (email, id_country, id_role, name, age, password, physical_address) FROM stdin;
    public          postgres    false    225   �7       )          0    16477 	   discounts 
   TABLE DATA           J   COPY public.discounts (id_discount, status, percentage, name) FROM stdin;
    public          postgres    false    215   Y8       1          0    16515    invoice_status 
   TABLE DATA           C   COPY public.invoice_status (id_invoice_status, status) FROM stdin;
    public          postgres    false    223   �8       /          0    16505    invoices 
   TABLE DATA           n   COPY public.invoices (id_invoice, id_customer, date, total_to_pay, id_payment, id_invoice_status) FROM stdin;
    public          postgres    false    221   �8       *          0    16482    offers 
   TABLE DATA           *   COPY public.offers (id_offer) FROM stdin;
    public          postgres    false    216   9       0          0    16510    orders 
   TABLE DATA           Y   COPY public.orders (id_order, id_invoice, id_product, detail, amount, price) FROM stdin;
    public          postgres    false    222   :9       .          0    16500    payments 
   TABLE DATA           4   COPY public.payments (id_payment, type) FROM stdin;
    public          postgres    false    220   �9       +          0    16487    products 
   TABLE DATA           �   COPY public.products (id_product, name, details, minimum_stock, maximum_stock, current_stock, price, price_with_tax, id_discount, id_offer, id_tax) FROM stdin;
    public          postgres    false    217   �9       -          0    16497    products_customers 
   TABLE DATA           E   COPY public.products_customers (id_product, id_customer) FROM stdin;
    public          postgres    false    219   D:       4          0    16532    roles 
   TABLE DATA           .   COPY public.roles (id_role, name) FROM stdin;
    public          postgres    false    226   m:       ,          0    16492    taxes 
   TABLE DATA           3   COPY public.taxes (id_tax, percentage) FROM stdin;
    public          postgres    false    218   �:       �           2606    16524    countries countries_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id_country);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    224            �           2606    16531    customers customers_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (email);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    225            |           2606    16481    discounts discounts_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.discounts
    ADD CONSTRAINT discounts_pkey PRIMARY KEY (id_discount);
 B   ALTER TABLE ONLY public.discounts DROP CONSTRAINT discounts_pkey;
       public            postgres    false    215            �           2606    16519 "   invoice_status invoice_status_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.invoice_status
    ADD CONSTRAINT invoice_status_pkey PRIMARY KEY (id_invoice_status);
 L   ALTER TABLE ONLY public.invoice_status DROP CONSTRAINT invoice_status_pkey;
       public            postgres    false    223            �           2606    16509    invoices invoices_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (id_invoice);
 @   ALTER TABLE ONLY public.invoices DROP CONSTRAINT invoices_pkey;
       public            postgres    false    221            ~           2606    16486    offers offers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_pkey PRIMARY KEY (id_offer);
 <   ALTER TABLE ONLY public.offers DROP CONSTRAINT offers_pkey;
       public            postgres    false    216            �           2606    16514    orders orders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id_order);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    222            �           2606    16504    payments payments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id_payment);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public            postgres    false    220            �           2606    16491    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id_product);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    217            �           2606    16536    roles roles_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id_role);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    226            �           2606    16496    taxes taxes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.taxes
    ADD CONSTRAINT taxes_pkey PRIMARY KEY (id_tax);
 :   ALTER TABLE ONLY public.taxes DROP CONSTRAINT taxes_pkey;
       public            postgres    false    218            �           2606    16572     customers fk_countries_customers    FK CONSTRAINT     �   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT fk_countries_customers FOREIGN KEY (id_country) REFERENCES public.countries(id_country);
 J   ALTER TABLE ONLY public.customers DROP CONSTRAINT fk_countries_customers;
       public          postgres    false    224    4748    225            �           2606    16537    products fk_discounts_products    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_discounts_products FOREIGN KEY (id_discount) REFERENCES public.discounts(id_discount);
 H   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_discounts_products;
       public          postgres    false    215    217    4732            �           2606    16567 #   invoices fk_invoice_status_invoices    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT fk_invoice_status_invoices FOREIGN KEY (id_invoice_status) REFERENCES public.invoice_status(id_invoice_status);
 M   ALTER TABLE ONLY public.invoices DROP CONSTRAINT fk_invoice_status_invoices;
       public          postgres    false    223    221    4746            �           2606    16562    orders fk_invoices_orders    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_invoices_orders FOREIGN KEY (id_invoice) REFERENCES public.invoices(id_invoice);
 C   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_invoices_orders;
       public          postgres    false    221    222    4742            �           2606    16542    products fk_offers_products    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_offers_products FOREIGN KEY (id_offer) REFERENCES public.offers(id_offer);
 E   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_offers_products;
       public          postgres    false    216    4734    217            �           2606    16557    invoices fk_payments_invoices    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT fk_payments_invoices FOREIGN KEY (id_payment) REFERENCES public.payments(id_payment);
 G   ALTER TABLE ONLY public.invoices DROP CONSTRAINT fk_payments_invoices;
       public          postgres    false    4740    220    221            �           2606    16547 1   products_customers fk_products_products_customers    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_customers
    ADD CONSTRAINT fk_products_products_customers FOREIGN KEY (id_product) REFERENCES public.products(id_product);
 [   ALTER TABLE ONLY public.products_customers DROP CONSTRAINT fk_products_products_customers;
       public          postgres    false    219    217    4736            �           2606    16577    customers fk_roles_customers    FK CONSTRAINT     �   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT fk_roles_customers FOREIGN KEY (id_role) REFERENCES public.roles(id_role);
 F   ALTER TABLE ONLY public.customers DROP CONSTRAINT fk_roles_customers;
       public          postgres    false    226    225    4752            �           2606    16552    products fk_taxes_products    FK CONSTRAINT     |   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_taxes_products FOREIGN KEY (id_tax) REFERENCES public.taxes(id_tax);
 D   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_taxes_products;
       public          postgres    false    217    218    4738            2   )   x�3�t-.H<�1�ˈӭ(1/93�˘ӳ$1Ȉ���� ��	�      3   �   x�K.-.��M-2rH�H�-�I�K���4B�Ģ�k���/�I��42�,H,..�/J115�t,K��LIT0R 򸒡���c4' 5�(_!(?h\zij�BhAJbIj
��!�<sKN�Ĝ�Tc �+F��� ��3L      )   -   x�3�LL.�,��44�30����2��̃��Ča��a"1z\\\ �x�      1   )   x�3�,H�K�L�+I�2�,HLOLI�2�L�+��b���� Ъ
h      /   8   x�Eɱ !B�z�l����Pg6��3�(r�����d�֓>W�&���      *      x�3�2�2����� �]      0   >   x�3�4B�ԒĜ�TCN#NC=.#N�Iqs��%�9A&a�i�i����� �)3      .   2   x�3�,I,�J-I�2�LMKM.�,��2�,)J�+NK-J�K�L����� %�      +   j   x�E̻�0��8�' ��"�� �M�` q���F��@ܣb����}���ٮW��;�
��d��G�f�&�I,����5`�)|
�m�r����c�v&�?��"�      -      x�3�4�2�4�2�4����� A      4   (   x�3�LL����2�L.-.��M-�2�L/M-.����� �D	      ,      x�3�4��30�2���P:F��� D.]     