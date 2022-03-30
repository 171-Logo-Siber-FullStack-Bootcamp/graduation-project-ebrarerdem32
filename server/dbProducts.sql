PGDMP         %                z         	   ecommerce    14.2    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394 	   ecommerce    DATABASE     f   CREATE DATABASE ecommerce WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE ecommerce;
                postgres    false            �            1259    24587 
   categories    TABLE     o   CREATE TABLE public.categories (
    category_id integer NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    24586    categories_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categories_category_id_seq;
       public          postgres    false    210            �           0    0    categories_category_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories.category_id;
          public          postgres    false    209            �            1259    24594    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    category_id integer,
    url character varying(2048)
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    24593    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    212            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    211            a           2604    24590    categories category_id    DEFAULT     �   ALTER TABLE ONLY public.categories ALTER COLUMN category_id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);
 E   ALTER TABLE public.categories ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    209    210    210            b           2604    24597    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �          0    24587 
   categories 
   TABLE DATA           7   COPY public.categories (category_id, name) FROM stdin;
    public          postgres    false    210   #       �          0    24594    products 
   TABLE DATA           E   COPY public.products (id, name, price, category_id, url) FROM stdin;
    public          postgres    false    212   �       �           0    0    categories_category_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categories_category_id_seq', 10, true);
          public          postgres    false    209                        0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 30, true);
          public          postgres    false    211            d           2606    24592    categories categories_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    210            f           2606    24599    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    212            g           2606    24600 "   products products_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(category_id);
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_category_id_fkey;
       public          postgres    false    212    3172    210            �   [   x��I
�@�ݏ��/^�TF�(������
yO+k��$G��l�dߨ;,�֨�a����v{35N~?O�U�C߰ɞ8$?/��      �   �  x��W]o�D}������J�]@}�e��@B���c2���iR~=�q�v���v%���s��9�eY98byF!�Ȗ�I/0�U�H�~���߯q�uC��6�R,��x3��֏	�ösh\]"��~�D��Y�����:�m�C�8�T)M�Q��B�_��i����*�,��ڜ�t]�(��s�v>��F.ʸi�p�[�Pn.|����bWP��EYM��&�7�Q;��y}C�W��^^R���[���U\^]�$����E^MX�)F�b�59Gu,��?T��ǩ��:yT�3��8_C�Yx�Ua���C�:���bߜr�~ ��!�~WLi,�P�m�0�`[��Wr.����T�ui*�)W�J��ї�X]PHq�sL$^qȱ�Ri�!�L�U�v��&�!�~;�Yh�v��Ii?�M۹��ԅr1-qN���2�T�{����#��py�>׭&�z���vn�K�M�Q���>�6.�]�3f�a�7��޸a��׷�J]�]�}�E��/���&|�32óL�O�W3�\jυW�Uo�U��K�� (9S��0��4����!7ZS<��B9�\�8Q\����L���ӂݭ��?9�g.�1�a..85F�����+)��¨���O��܁��3��?�%�󙫪�v��J��ĥ�ؿ^<<+��>�h6�]C35��+��3�؃�o���m@�k }�Ѝh�L��Fx��.m�!Th�]��O�}W%4���~n��������el�*Y�سU�4�܅�(X=H�u�[������}:��9?�����:��l��F[���q�,k5�i͓�	�kd�R���+UѠj�l#'��\d`?s����$�G����qa\��q����]5�!g&�'5�`i�T��tK2���G]��>���4��\��a�!�>���6�6 �G�qDc؏��D)�Hxe��dLx��B��;ʠ����~a2�����V<��M���ӦC?�)��p�jD��gV�rs�2��\���+&W�*����e{��(�y��s{-r�L=W�O�D�r�Xm޳�kA��9x�ih�&c���S�w�}`(�z���X.��'�bk�������~��}��!�o���0�9Lv�(%`]9cY���R
��Z�c�h���� �}7�NO�C��Ta��X�!�Z`���2wl������!a�,9V@�(,�P'��V$�	��Gr�T��	װ`�ʂQ�5��&���!p����?�����|��0Qm�����;p���|��v��cin�=S{�0���j2����3�m��5C��
�RU�J��笢���W
���df4T��l�۩6ހ��z��8�4����:F6���'2����I���`۵�ȸ�D5	���ؗSdf:IY��m�ޟ��e��c���x������^�k@L��
_���w����<�N��7���8Nw��~Ĝʽ�O,�&[�y����      