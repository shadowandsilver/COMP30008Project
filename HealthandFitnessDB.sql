PGDMP  !    )        
        {            HealthandFitnessDB    16.0    16.0 o               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    59354    HealthandFitnessDB    DATABASE     �   CREATE DATABASE "HealthandFitnessDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Chinese (Simplified)_China.1252';
 $   DROP DATABASE "HealthandFitnessDB";
                postgres    false            �            1259    59518    apply_group_rooms    TABLE     ]   CREATE TABLE public.apply_group_rooms (
    group_lesson_id integer,
    rooms_id integer
);
 %   DROP TABLE public.apply_group_rooms;
       public         heap    postgres    false            �            1259    59531    apply_others_rooms    TABLE     X   CREATE TABLE public.apply_others_rooms (
    others_id integer,
    rooms_id integer
);
 &   DROP TABLE public.apply_others_rooms;
       public         heap    postgres    false            �            1259    59385    coaches    TABLE       CREATE TABLE public.coaches (
    coach_id integer NOT NULL,
    first_name character varying(225) NOT NULL,
    last_name character varying(225) NOT NULL,
    sex character varying(15),
    join_date date,
    email character varying(255) NOT NULL,
    phone character varying(15)
);
    DROP TABLE public.coaches;
       public         heap    postgres    false            �            1259    59384    coaches_coach_id_seq    SEQUENCE     �   CREATE SEQUENCE public.coaches_coach_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.coaches_coach_id_seq;
       public          postgres    false    220            �           0    0    coaches_coach_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.coaches_coach_id_seq OWNED BY public.coaches.coach_id;
          public          postgres    false    219            �            1259    59396    group_lesson    TABLE       CREATE TABLE public.group_lesson (
    group_lesson_id integer NOT NULL,
    group_lesson_name character varying(225) NOT NULL,
    description text,
    duration integer,
    max_numbers integer,
    price numeric(8,2),
    start_date date DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.group_lesson;
       public         heap    postgres    false            �            1259    59395     group_lesson_group_lesson_id_seq    SEQUENCE     �   CREATE SEQUENCE public.group_lesson_group_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.group_lesson_group_lesson_id_seq;
       public          postgres    false    222            �           0    0     group_lesson_group_lesson_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.group_lesson_group_lesson_id_seq OWNED BY public.group_lesson.group_lesson_id;
          public          postgres    false    221            �            1259    59366    health_data    TABLE     �   CREATE TABLE public.health_data (
    member_id integer,
    height numeric(8,2),
    weight numeric(8,2),
    bmi numeric(8,2),
    sex character varying(4),
    age numeric(8,2)
);
    DROP TABLE public.health_data;
       public         heap    postgres    false            �            1259    59544    install_instruments    TABLE     ^   CREATE TABLE public.install_instruments (
    instruments_id integer,
    rooms_id integer
);
 '   DROP TABLE public.install_instruments;
       public         heap    postgres    false            �            1259    59424    instruments    TABLE     �   CREATE TABLE public.instruments (
    instrument_id integer NOT NULL,
    instrument_name character varying(225) NOT NULL,
    purchase_date date,
    last_check_date date
);
    DROP TABLE public.instruments;
       public         heap    postgres    false            �            1259    59423    instruments_instrument_id_seq    SEQUENCE     �   CREATE SEQUENCE public.instruments_instrument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.instruments_instrument_id_seq;
       public          postgres    false    228            �           0    0    instruments_instrument_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.instruments_instrument_id_seq OWNED BY public.instruments.instrument_id;
          public          postgres    false    227            �            1259    59374    member_achievement    TABLE     X   CREATE TABLE public.member_achievement (
    member_id integer,
    achievemnet text
);
 &   DROP TABLE public.member_achievement;
       public         heap    postgres    false            �            1259    59356    members    TABLE     :  CREATE TABLE public.members (
    member_id integer NOT NULL,
    first_name character varying(225) NOT NULL,
    last_name character varying(225) NOT NULL,
    loyalty_point integer,
    personal_goal text,
    exercise_routines text,
    email character varying(255) NOT NULL,
    phone character varying(15)
);
    DROP TABLE public.members;
       public         heap    postgres    false            �            1259    59355    members_member_id_seq    SEQUENCE     �   CREATE SEQUENCE public.members_member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.members_member_id_seq;
       public          postgres    false    216            �           0    0    members_member_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.members_member_id_seq OWNED BY public.members.member_id;
          public          postgres    false    215            �            1259    59406    other_actives    TABLE     �   CREATE TABLE public.other_actives (
    others_id integer NOT NULL,
    others_name character varying(225) NOT NULL,
    description text,
    duration integer,
    max_numbers integer,
    price numeric(8,2),
    date date DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.other_actives;
       public         heap    postgres    false            �            1259    59405    other_actives_others_id_seq    SEQUENCE     �   CREATE SEQUENCE public.other_actives_others_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.other_actives_others_id_seq;
       public          postgres    false    224            �           0    0    other_actives_others_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.other_actives_others_id_seq OWNED BY public.other_actives.others_id;
          public          postgres    false    223            �            1259    59431    registration_group_lesson    TABLE     3  CREATE TABLE public.registration_group_lesson (
    registration_group_lesson_id integer NOT NULL,
    member_id integer,
    group_lesson_id integer,
    price numeric(8,2),
    fee_status integer,
    CONSTRAINT registration_group_lesson_fee_status_check CHECK (((fee_status = 0) OR (fee_status = 1)))
);
 -   DROP TABLE public.registration_group_lesson;
       public         heap    postgres    false            �            1259    59430 :   registration_group_lesson_registration_group_lesson_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_group_lesson_registration_group_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 Q   DROP SEQUENCE public.registration_group_lesson_registration_group_lesson_id_seq;
       public          postgres    false    230            �           0    0 :   registration_group_lesson_registration_group_lesson_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.registration_group_lesson_registration_group_lesson_id_seq OWNED BY public.registration_group_lesson.registration_group_lesson_id;
          public          postgres    false    229            �            1259    59449    registration_others_lesson    TABLE     0  CREATE TABLE public.registration_others_lesson (
    registration_others_lesson_id integer NOT NULL,
    member_id integer,
    others_id integer,
    price numeric(8,2),
    fee_status integer,
    CONSTRAINT registration_others_lesson_fee_status_check CHECK (((fee_status = 0) OR (fee_status = 1)))
);
 .   DROP TABLE public.registration_others_lesson;
       public         heap    postgres    false            �            1259    59448 <   registration_others_lesson_registration_others_lesson_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_others_lesson_registration_others_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 S   DROP SEQUENCE public.registration_others_lesson_registration_others_lesson_id_seq;
       public          postgres    false    232            �           0    0 <   registration_others_lesson_registration_others_lesson_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.registration_others_lesson_registration_others_lesson_id_seq OWNED BY public.registration_others_lesson.registration_others_lesson_id;
          public          postgres    false    231            �            1259    59501    registration_private_lesson    TABLE     2  CREATE TABLE public.registration_private_lesson (
    registration_private_lesson_id integer NOT NULL,
    member_id integer,
    coach_id integer,
    price numeric(8,2),
    fee_status integer,
    CONSTRAINT registration_private_lesson_fee_status_check CHECK (((fee_status = 0) OR (fee_status = 1)))
);
 /   DROP TABLE public.registration_private_lesson;
       public         heap    postgres    false            �            1259    59500 >   registration_private_lesson_registration_private_lesson_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_private_lesson_registration_private_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 U   DROP SEQUENCE public.registration_private_lesson_registration_private_lesson_id_seq;
       public          postgres    false    238            �           0    0 >   registration_private_lesson_registration_private_lesson_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.registration_private_lesson_registration_private_lesson_id_seq OWNED BY public.registration_private_lesson.registration_private_lesson_id;
          public          postgres    false    237            �            1259    59416    rooms    TABLE     �   CREATE TABLE public.rooms (
    room_id integer NOT NULL,
    room_number integer NOT NULL,
    status integer,
    CONSTRAINT rooms_status_check CHECK (((status = 0) OR (status = 1)))
);
    DROP TABLE public.rooms;
       public         heap    postgres    false            �            1259    59415    rooms_room_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rooms_room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.rooms_room_id_seq;
       public          postgres    false    226            �           0    0    rooms_room_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.rooms_room_id_seq OWNED BY public.rooms.room_id;
          public          postgres    false    225            �            1259    59467    take_group_lesson    TABLE     �   CREATE TABLE public.take_group_lesson (
    take_group_lesson_id integer NOT NULL,
    coach_id integer,
    group_lesson_id integer
);
 %   DROP TABLE public.take_group_lesson;
       public         heap    postgres    false            �            1259    59466 *   take_group_lesson_take_group_lesson_id_seq    SEQUENCE     �   CREATE SEQUENCE public.take_group_lesson_take_group_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.take_group_lesson_take_group_lesson_id_seq;
       public          postgres    false    234            �           0    0 *   take_group_lesson_take_group_lesson_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.take_group_lesson_take_group_lesson_id_seq OWNED BY public.take_group_lesson.take_group_lesson_id;
          public          postgres    false    233            �            1259    59484    take_others_lesson    TABLE     �   CREATE TABLE public.take_others_lesson (
    take_others_lesson_id integer NOT NULL,
    coach_id integer,
    others_id integer
);
 &   DROP TABLE public.take_others_lesson;
       public         heap    postgres    false            �            1259    59483 ,   take_others_lesson_take_others_lesson_id_seq    SEQUENCE     �   CREATE SEQUENCE public.take_others_lesson_take_others_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.take_others_lesson_take_others_lesson_id_seq;
       public          postgres    false    236            �           0    0 ,   take_others_lesson_take_others_lesson_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.take_others_lesson_take_others_lesson_id_seq OWNED BY public.take_others_lesson.take_others_lesson_id;
          public          postgres    false    235            �           2604    59388    coaches coach_id    DEFAULT     t   ALTER TABLE ONLY public.coaches ALTER COLUMN coach_id SET DEFAULT nextval('public.coaches_coach_id_seq'::regclass);
 ?   ALTER TABLE public.coaches ALTER COLUMN coach_id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    59399    group_lesson group_lesson_id    DEFAULT     �   ALTER TABLE ONLY public.group_lesson ALTER COLUMN group_lesson_id SET DEFAULT nextval('public.group_lesson_group_lesson_id_seq'::regclass);
 K   ALTER TABLE public.group_lesson ALTER COLUMN group_lesson_id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    59427    instruments instrument_id    DEFAULT     �   ALTER TABLE ONLY public.instruments ALTER COLUMN instrument_id SET DEFAULT nextval('public.instruments_instrument_id_seq'::regclass);
 H   ALTER TABLE public.instruments ALTER COLUMN instrument_id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    59359    members member_id    DEFAULT     v   ALTER TABLE ONLY public.members ALTER COLUMN member_id SET DEFAULT nextval('public.members_member_id_seq'::regclass);
 @   ALTER TABLE public.members ALTER COLUMN member_id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    59409    other_actives others_id    DEFAULT     �   ALTER TABLE ONLY public.other_actives ALTER COLUMN others_id SET DEFAULT nextval('public.other_actives_others_id_seq'::regclass);
 F   ALTER TABLE public.other_actives ALTER COLUMN others_id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    59434 6   registration_group_lesson registration_group_lesson_id    DEFAULT     �   ALTER TABLE ONLY public.registration_group_lesson ALTER COLUMN registration_group_lesson_id SET DEFAULT nextval('public.registration_group_lesson_registration_group_lesson_id_seq'::regclass);
 e   ALTER TABLE public.registration_group_lesson ALTER COLUMN registration_group_lesson_id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    59452 8   registration_others_lesson registration_others_lesson_id    DEFAULT     �   ALTER TABLE ONLY public.registration_others_lesson ALTER COLUMN registration_others_lesson_id SET DEFAULT nextval('public.registration_others_lesson_registration_others_lesson_id_seq'::regclass);
 g   ALTER TABLE public.registration_others_lesson ALTER COLUMN registration_others_lesson_id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    59504 :   registration_private_lesson registration_private_lesson_id    DEFAULT     �   ALTER TABLE ONLY public.registration_private_lesson ALTER COLUMN registration_private_lesson_id SET DEFAULT nextval('public.registration_private_lesson_registration_private_lesson_id_seq'::regclass);
 i   ALTER TABLE public.registration_private_lesson ALTER COLUMN registration_private_lesson_id DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    59419    rooms room_id    DEFAULT     n   ALTER TABLE ONLY public.rooms ALTER COLUMN room_id SET DEFAULT nextval('public.rooms_room_id_seq'::regclass);
 <   ALTER TABLE public.rooms ALTER COLUMN room_id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    59470 &   take_group_lesson take_group_lesson_id    DEFAULT     �   ALTER TABLE ONLY public.take_group_lesson ALTER COLUMN take_group_lesson_id SET DEFAULT nextval('public.take_group_lesson_take_group_lesson_id_seq'::regclass);
 U   ALTER TABLE public.take_group_lesson ALTER COLUMN take_group_lesson_id DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    59487 (   take_others_lesson take_others_lesson_id    DEFAULT     �   ALTER TABLE ONLY public.take_others_lesson ALTER COLUMN take_others_lesson_id SET DEFAULT nextval('public.take_others_lesson_take_others_lesson_id_seq'::regclass);
 W   ALTER TABLE public.take_others_lesson ALTER COLUMN take_others_lesson_id DROP DEFAULT;
       public          postgres    false    236    235    236            z          0    59518    apply_group_rooms 
   TABLE DATA           F   COPY public.apply_group_rooms (group_lesson_id, rooms_id) FROM stdin;
    public          postgres    false    239   w�       {          0    59531    apply_others_rooms 
   TABLE DATA           A   COPY public.apply_others_rooms (others_id, rooms_id) FROM stdin;
    public          postgres    false    240   ��       g          0    59385    coaches 
   TABLE DATA           `   COPY public.coaches (coach_id, first_name, last_name, sex, join_date, email, phone) FROM stdin;
    public          postgres    false    220   ї       i          0    59396    group_lesson 
   TABLE DATA           �   COPY public.group_lesson (group_lesson_id, group_lesson_name, description, duration, max_numbers, price, start_date) FROM stdin;
    public          postgres    false    222   ��       d          0    59366    health_data 
   TABLE DATA           O   COPY public.health_data (member_id, height, weight, bmi, sex, age) FROM stdin;
    public          postgres    false    217   ��       |          0    59544    install_instruments 
   TABLE DATA           G   COPY public.install_instruments (instruments_id, rooms_id) FROM stdin;
    public          postgres    false    241   ��       o          0    59424    instruments 
   TABLE DATA           e   COPY public.instruments (instrument_id, instrument_name, purchase_date, last_check_date) FROM stdin;
    public          postgres    false    228   %�       e          0    59374    member_achievement 
   TABLE DATA           D   COPY public.member_achievement (member_id, achievemnet) FROM stdin;
    public          postgres    false    218   ˚       c          0    59356    members 
   TABLE DATA           �   COPY public.members (member_id, first_name, last_name, loyalty_point, personal_goal, exercise_routines, email, phone) FROM stdin;
    public          postgres    false    216   X�       k          0    59406    other_actives 
   TABLE DATA           p   COPY public.other_actives (others_id, others_name, description, duration, max_numbers, price, date) FROM stdin;
    public          postgres    false    224   t�       q          0    59431    registration_group_lesson 
   TABLE DATA           �   COPY public.registration_group_lesson (registration_group_lesson_id, member_id, group_lesson_id, price, fee_status) FROM stdin;
    public          postgres    false    230   s�       s          0    59449    registration_others_lesson 
   TABLE DATA           |   COPY public.registration_others_lesson (registration_others_lesson_id, member_id, others_id, price, fee_status) FROM stdin;
    public          postgres    false    232   ��       y          0    59501    registration_private_lesson 
   TABLE DATA           }   COPY public.registration_private_lesson (registration_private_lesson_id, member_id, coach_id, price, fee_status) FROM stdin;
    public          postgres    false    238    �       m          0    59416    rooms 
   TABLE DATA           =   COPY public.rooms (room_id, room_number, status) FROM stdin;
    public          postgres    false    226   >�       u          0    59467    take_group_lesson 
   TABLE DATA           \   COPY public.take_group_lesson (take_group_lesson_id, coach_id, group_lesson_id) FROM stdin;
    public          postgres    false    234   y�       w          0    59484    take_others_lesson 
   TABLE DATA           X   COPY public.take_others_lesson (take_others_lesson_id, coach_id, others_id) FROM stdin;
    public          postgres    false    236   ��       �           0    0    coaches_coach_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.coaches_coach_id_seq', 5, true);
          public          postgres    false    219            �           0    0     group_lesson_group_lesson_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.group_lesson_group_lesson_id_seq', 5, true);
          public          postgres    false    221            �           0    0    instruments_instrument_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.instruments_instrument_id_seq', 5, true);
          public          postgres    false    227            �           0    0    members_member_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.members_member_id_seq', 5, true);
          public          postgres    false    215            �           0    0    other_actives_others_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.other_actives_others_id_seq', 5, true);
          public          postgres    false    223            �           0    0 :   registration_group_lesson_registration_group_lesson_id_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public.registration_group_lesson_registration_group_lesson_id_seq', 5, true);
          public          postgres    false    229            �           0    0 <   registration_others_lesson_registration_others_lesson_id_seq    SEQUENCE SET     j   SELECT pg_catalog.setval('public.registration_others_lesson_registration_others_lesson_id_seq', 5, true);
          public          postgres    false    231            �           0    0 >   registration_private_lesson_registration_private_lesson_id_seq    SEQUENCE SET     l   SELECT pg_catalog.setval('public.registration_private_lesson_registration_private_lesson_id_seq', 3, true);
          public          postgres    false    237            �           0    0    rooms_room_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.rooms_room_id_seq', 5, true);
          public          postgres    false    225            �           0    0 *   take_group_lesson_take_group_lesson_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.take_group_lesson_take_group_lesson_id_seq', 5, true);
          public          postgres    false    233            �           0    0 ,   take_others_lesson_take_others_lesson_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.take_others_lesson_take_others_lesson_id_seq', 5, true);
          public          postgres    false    235            �           2606    59394    coaches coaches_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.coaches
    ADD CONSTRAINT coaches_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.coaches DROP CONSTRAINT coaches_email_key;
       public            postgres    false    220            �           2606    59392    coaches coaches_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.coaches
    ADD CONSTRAINT coaches_pkey PRIMARY KEY (coach_id);
 >   ALTER TABLE ONLY public.coaches DROP CONSTRAINT coaches_pkey;
       public            postgres    false    220            �           2606    59404    group_lesson group_lesson_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.group_lesson
    ADD CONSTRAINT group_lesson_pkey PRIMARY KEY (group_lesson_id);
 H   ALTER TABLE ONLY public.group_lesson DROP CONSTRAINT group_lesson_pkey;
       public            postgres    false    222            �           2606    59429    instruments instruments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.instruments
    ADD CONSTRAINT instruments_pkey PRIMARY KEY (instrument_id);
 F   ALTER TABLE ONLY public.instruments DROP CONSTRAINT instruments_pkey;
       public            postgres    false    228            �           2606    59365    members members_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.members DROP CONSTRAINT members_email_key;
       public            postgres    false    216            �           2606    59363    members members_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (member_id);
 >   ALTER TABLE ONLY public.members DROP CONSTRAINT members_pkey;
       public            postgres    false    216            �           2606    59414     other_actives other_actives_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.other_actives
    ADD CONSTRAINT other_actives_pkey PRIMARY KEY (others_id);
 J   ALTER TABLE ONLY public.other_actives DROP CONSTRAINT other_actives_pkey;
       public            postgres    false    224            �           2606    59437 8   registration_group_lesson registration_group_lesson_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.registration_group_lesson
    ADD CONSTRAINT registration_group_lesson_pkey PRIMARY KEY (registration_group_lesson_id);
 b   ALTER TABLE ONLY public.registration_group_lesson DROP CONSTRAINT registration_group_lesson_pkey;
       public            postgres    false    230            �           2606    59455 :   registration_others_lesson registration_others_lesson_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.registration_others_lesson
    ADD CONSTRAINT registration_others_lesson_pkey PRIMARY KEY (registration_others_lesson_id);
 d   ALTER TABLE ONLY public.registration_others_lesson DROP CONSTRAINT registration_others_lesson_pkey;
       public            postgres    false    232            �           2606    59507 <   registration_private_lesson registration_private_lesson_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.registration_private_lesson
    ADD CONSTRAINT registration_private_lesson_pkey PRIMARY KEY (registration_private_lesson_id);
 f   ALTER TABLE ONLY public.registration_private_lesson DROP CONSTRAINT registration_private_lesson_pkey;
       public            postgres    false    238            �           2606    59422    rooms rooms_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (room_id);
 :   ALTER TABLE ONLY public.rooms DROP CONSTRAINT rooms_pkey;
       public            postgres    false    226            �           2606    59472 (   take_group_lesson take_group_lesson_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.take_group_lesson
    ADD CONSTRAINT take_group_lesson_pkey PRIMARY KEY (take_group_lesson_id);
 R   ALTER TABLE ONLY public.take_group_lesson DROP CONSTRAINT take_group_lesson_pkey;
       public            postgres    false    234            �           2606    59489 *   take_others_lesson take_others_lesson_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.take_others_lesson
    ADD CONSTRAINT take_others_lesson_pkey PRIMARY KEY (take_others_lesson_id);
 T   ALTER TABLE ONLY public.take_others_lesson DROP CONSTRAINT take_others_lesson_pkey;
       public            postgres    false    236            �           2606    59521 8   apply_group_rooms apply_group_rooms_group_lesson_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.apply_group_rooms
    ADD CONSTRAINT apply_group_rooms_group_lesson_id_fkey FOREIGN KEY (group_lesson_id) REFERENCES public.group_lesson(group_lesson_id);
 b   ALTER TABLE ONLY public.apply_group_rooms DROP CONSTRAINT apply_group_rooms_group_lesson_id_fkey;
       public          postgres    false    239    4784    222            �           2606    59526 1   apply_group_rooms apply_group_rooms_rooms_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.apply_group_rooms
    ADD CONSTRAINT apply_group_rooms_rooms_id_fkey FOREIGN KEY (rooms_id) REFERENCES public.rooms(room_id);
 [   ALTER TABLE ONLY public.apply_group_rooms DROP CONSTRAINT apply_group_rooms_rooms_id_fkey;
       public          postgres    false    239    226    4788            �           2606    59534 4   apply_others_rooms apply_others_rooms_others_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.apply_others_rooms
    ADD CONSTRAINT apply_others_rooms_others_id_fkey FOREIGN KEY (others_id) REFERENCES public.other_actives(others_id);
 ^   ALTER TABLE ONLY public.apply_others_rooms DROP CONSTRAINT apply_others_rooms_others_id_fkey;
       public          postgres    false    240    224    4786            �           2606    59539 3   apply_others_rooms apply_others_rooms_rooms_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.apply_others_rooms
    ADD CONSTRAINT apply_others_rooms_rooms_id_fkey FOREIGN KEY (rooms_id) REFERENCES public.rooms(room_id);
 ]   ALTER TABLE ONLY public.apply_others_rooms DROP CONSTRAINT apply_others_rooms_rooms_id_fkey;
       public          postgres    false    4788    226    240            �           2606    59369 &   health_data health_data_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.health_data
    ADD CONSTRAINT health_data_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.members(member_id);
 P   ALTER TABLE ONLY public.health_data DROP CONSTRAINT health_data_member_id_fkey;
       public          postgres    false    4778    216    217            �           2606    59547 ;   install_instruments install_instruments_instruments_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.install_instruments
    ADD CONSTRAINT install_instruments_instruments_id_fkey FOREIGN KEY (instruments_id) REFERENCES public.instruments(instrument_id);
 e   ALTER TABLE ONLY public.install_instruments DROP CONSTRAINT install_instruments_instruments_id_fkey;
       public          postgres    false    228    4790    241            �           2606    59552 5   install_instruments install_instruments_rooms_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.install_instruments
    ADD CONSTRAINT install_instruments_rooms_id_fkey FOREIGN KEY (rooms_id) REFERENCES public.rooms(room_id);
 _   ALTER TABLE ONLY public.install_instruments DROP CONSTRAINT install_instruments_rooms_id_fkey;
       public          postgres    false    4788    241    226            �           2606    59379 4   member_achievement member_achievement_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.member_achievement
    ADD CONSTRAINT member_achievement_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.members(member_id);
 ^   ALTER TABLE ONLY public.member_achievement DROP CONSTRAINT member_achievement_member_id_fkey;
       public          postgres    false    216    4778    218            �           2606    59443 H   registration_group_lesson registration_group_lesson_group_lesson_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_group_lesson
    ADD CONSTRAINT registration_group_lesson_group_lesson_id_fkey FOREIGN KEY (group_lesson_id) REFERENCES public.group_lesson(group_lesson_id);
 r   ALTER TABLE ONLY public.registration_group_lesson DROP CONSTRAINT registration_group_lesson_group_lesson_id_fkey;
       public          postgres    false    222    230    4784            �           2606    59438 B   registration_group_lesson registration_group_lesson_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_group_lesson
    ADD CONSTRAINT registration_group_lesson_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.members(member_id);
 l   ALTER TABLE ONLY public.registration_group_lesson DROP CONSTRAINT registration_group_lesson_member_id_fkey;
       public          postgres    false    230    216    4778            �           2606    59456 D   registration_others_lesson registration_others_lesson_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_others_lesson
    ADD CONSTRAINT registration_others_lesson_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.members(member_id);
 n   ALTER TABLE ONLY public.registration_others_lesson DROP CONSTRAINT registration_others_lesson_member_id_fkey;
       public          postgres    false    232    216    4778            �           2606    59461 D   registration_others_lesson registration_others_lesson_others_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_others_lesson
    ADD CONSTRAINT registration_others_lesson_others_id_fkey FOREIGN KEY (others_id) REFERENCES public.other_actives(others_id);
 n   ALTER TABLE ONLY public.registration_others_lesson DROP CONSTRAINT registration_others_lesson_others_id_fkey;
       public          postgres    false    4786    232    224            �           2606    59513 E   registration_private_lesson registration_private_lesson_coach_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_private_lesson
    ADD CONSTRAINT registration_private_lesson_coach_id_fkey FOREIGN KEY (coach_id) REFERENCES public.coaches(coach_id);
 o   ALTER TABLE ONLY public.registration_private_lesson DROP CONSTRAINT registration_private_lesson_coach_id_fkey;
       public          postgres    false    4782    238    220            �           2606    59508 F   registration_private_lesson registration_private_lesson_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_private_lesson
    ADD CONSTRAINT registration_private_lesson_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.members(member_id);
 p   ALTER TABLE ONLY public.registration_private_lesson DROP CONSTRAINT registration_private_lesson_member_id_fkey;
       public          postgres    false    238    4778    216            �           2606    59473 1   take_group_lesson take_group_lesson_coach_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.take_group_lesson
    ADD CONSTRAINT take_group_lesson_coach_id_fkey FOREIGN KEY (coach_id) REFERENCES public.coaches(coach_id);
 [   ALTER TABLE ONLY public.take_group_lesson DROP CONSTRAINT take_group_lesson_coach_id_fkey;
       public          postgres    false    234    4782    220            �           2606    59478 8   take_group_lesson take_group_lesson_group_lesson_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.take_group_lesson
    ADD CONSTRAINT take_group_lesson_group_lesson_id_fkey FOREIGN KEY (group_lesson_id) REFERENCES public.group_lesson(group_lesson_id);
 b   ALTER TABLE ONLY public.take_group_lesson DROP CONSTRAINT take_group_lesson_group_lesson_id_fkey;
       public          postgres    false    4784    222    234            �           2606    59490 3   take_others_lesson take_others_lesson_coach_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.take_others_lesson
    ADD CONSTRAINT take_others_lesson_coach_id_fkey FOREIGN KEY (coach_id) REFERENCES public.coaches(coach_id);
 ]   ALTER TABLE ONLY public.take_others_lesson DROP CONSTRAINT take_others_lesson_coach_id_fkey;
       public          postgres    false    236    220    4782            �           2606    59495 4   take_others_lesson take_others_lesson_others_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.take_others_lesson
    ADD CONSTRAINT take_others_lesson_others_id_fkey FOREIGN KEY (others_id) REFERENCES public.other_actives(others_id);
 ^   ALTER TABLE ONLY public.take_others_lesson DROP CONSTRAINT take_others_lesson_others_id_fkey;
       public          postgres    false    224    4786    236            z      x�3�4�2�4�2�4�2b ?F��� '�      {      x�3�4�2cS.c 6�4����� '�      g   �   x�u���0���w9�9�*n��&..4�����[*qc���7���w�ͻi{(A�b$F�PMD��l������j=��0�+\DB�.�1��OH����'}��"���-\\3��W��2d�|&��W"�S�ݜ������&��@�aHP�.�dB���&��m��B�q��:Aif�����B|�a(      i   �   x�]��j�0��z���I���e�Z�]<�IŌ<l�.o?e]/dd����l�h�'����$�׭�-�0�á�
�խ�۶2p�x�+^�%&��-�|�H��-{̡P�.�<N��jJ��F�=%<�/J�������[�_i���2{��W�VB�1�����y�~蓢�0h�g];c��71��O�S��V7b�:�_���Ϙ�q�����e�      d   Z   x�%���0�fNR������X���K��J�mx1�	�W����4<`:�]L+�F��Y�CV�ʡ���r�ϊ����g�~*"?C�n      |      x�3�4�2bcN#.NS.S ����� '�      o   �   x�5��
�0D�ٯ�D6��*�����%�A��VBD�{�o�x3V�9�˔�!�Ak,��}�R��4�Yw�Hcw�!_!2��TWBI��[��=��5��˜x�Q���>���X7�b�X#f�eN������A��3Z�O�"�� >��/�      e   }   x�M�1� К=�^ 1r �3W�AX!#Y2�)r{�L����G��VH(�wi]���v��yՅ5�L8Z;�����<�CƭQ�Zk�Kp;1';D�Q�ǐ})ĉ���qԉ�z&���^�� ��M,�      c     x�u��N�0E����ʣ�+��`�
��$�&��l����l���3���,<8��(���e!�z�G߱�h;y&�`L��m��I��@Yի��ju}s[�
�4��� U2�MV�4�1��Ӳ�g-�n�h�y�B-�KQ��5snH�rS���f
�&8̍��1�q���%a%��h�f4��|6'�I5]�a��>\�sp��b;������\zQ���P��wg9�,y����R���wS�Nܘi�dzI��J�z��1      k   �   x�]��N�0���S�65i��ub��?��p��F�Ni\o���*E�������:E�I�-M��K#<2���"�Fi�$`��8�$bp��j9۲_�j��ƹ���!�	�)iC�x-|D��������%Ԇ�V�
�9D�s��1v�������˒j�6B�3����;�����=���56���͜f��%��+|�S�eO�'ɰ�l�&��(��妓�5�l�g&��o���Hzn�      q   7   x�=��	 0��0b�����"���j��C�7g"�ç-�B1�{Ag��H>�a
>      s   6   x�Uɱ 0����m�����:}@��A���3?r�~j�^=#y�W
8      y   .   x�3�4A#S=NC.#N#NcN#׀��1�44�rc���� ��      m   +   x�3�440�4�2�F�\�@��L��	�o
���+F��� ��      u   '   x�3�4�4�2��\ƜF�F\&@҄˔�(���� K�,      w   '   x�3�4�4�2�4�4�b ۄӄӐ�H�p��qqq K�/     