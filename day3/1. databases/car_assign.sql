PGDMP                         {            postgres    13.12    13.12     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13442    postgres    DATABASE     h   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3003            �            1259    16502    car_assignment    TABLE     �  CREATE TABLE public.car_assignment (
    car_id integer,
    symboling integer,
    carname character varying,
    fueltype character varying,
    aspiration character varying,
    doornumber character varying,
    carbody character varying,
    drivewheel character varying,
    enginelocation character varying,
    wheelbase real,
    carlength real,
    carwidth real,
    carheight real,
    curbweight real,
    enginetype character varying,
    cylindernumber character varying,
    enginesize integer,
    fuelsystem character varying,
    boreratio real,
    stroke real,
    compressionratio real,
    horsepower integer,
    peakrpm integer,
    citympg integer,
    highwaympg integer,
    price real
);
 "   DROP TABLE public.car_assignment;
       public         heap    postgres    false            �          0    16502    car_assignment 
   TABLE DATA           L  COPY public.car_assignment (car_id, symboling, carname, fueltype, aspiration, doornumber, carbody, drivewheel, enginelocation, wheelbase, carlength, carwidth, carheight, curbweight, enginetype, cylindernumber, enginesize, fuelsystem, boreratio, stroke, compressionratio, horsepower, peakrpm, citympg, highwaympg, price) FROM stdin;
    public          postgres    false    206   ]	       �      x��]ɒ�H�=�_�c�Ai�/�k��flsA�H&%f2$SR}����A���ʬ�Z�&�{���{@��E���4���9���y���mu,��Mq�~(և�Ϻ9��u�|�/���T8�d
nܓ+�z�¯�V��^�����\����eW�'e�d\��y�c�����{��+qA�x�����?��п�d�3�u�6����_�y�N���j�-��Փ.��O�0�~�œ*�� &��q���ZD&�D�CL��L�/�i�П,��fWr�����M�^�Ȟ��֐*�!x��d!��Š�;!��C��߫�U������t�<�R`5 ��я��Ϛ~�� &�\G\Ng%�(�5���G���Z�"PYh��t����ِ���qkq�w��9Ӏ���t�$��_	���;m-g+�A��ϐ�W��d�#;/��wȪC>����|���3gRl�c��.�갉+Y�tV���>�lv�������oXfnН��ān�dZޣ��ݑ0�؜�O�1V� D�������F,�I4�K;^�u����n�8"���v�`��I�FI��p����w {A��-����d�582�:PRy08B!W��N�J7�yKҪT>$�5z*<�JvP�RS�P�
����lL�K%�6�i:I�rЮ�� �p����cɬ!��SOi���WGT�e��.	��)b�'���_-5�s5�+�s$&��b�Z6�}}*woվ��_�܀������L9W��kSׅ!�y~�ӵ�8[&xJ4E���39�5_�x�_����J^.҂�3	
�ŝU��,��d`�H�YT�t��@'�%q��@��V%��H"~Ȑ:|O�_���s�{RZ���eS�l�i�af\�X����YsOg@�$p�N�E�MI���V����ׯ�~_�o�<�>	=i�r���Fd�s����ޅ�#��`�������uOFX�����0�xc�@�B�ڝ�a*_�fs:|L��87b�w	P$[!_O	\��7���%�]�N?����|<�.la���,���[QP���a�d�d�Y�U����C�$�t�ny��B
eB�\[-E
^�����p>�[x��3��p<Qה��A��H��%�����H�^\�>w��Ѐ�������,��Y��Kb��nQ�;D^��ϐu(�WR����s�(��}�l���p�V�q���)2 e*qi�h}L�g!��w�t@)=ɮz�jMV��'�5�Wl���R�&O$u.����,C��H�2��?&ܐA,6(LL�������[����Qr�����}�����P�	&�(q����~Z�QzK�4m
x#!d���1F�C��h�8��2�X� �/�O��(0� %Oz�XOࣩ��M=�����آ!�%�Z�"h~K��m��l�"d�A�Z�jDfet���=�P���/|\�Gu>��z�����I^���Bl��H�c��p�4�2vw<�u.���_��~��U��܌���4��q��a��taֶ��S�`!��E������Gy_�_Qm8�Is+ez�#��|�Ws8N5#G,�7:�B�M�G����-|z�8�����-�űm�.� ��7�p��J��}���)|�*u��=1!M@#F1��M_��>�3���`��9Th�P�m'ДT>A~����F��%��&z
8Y��{�(F9��O���gM��MIʗ�ar��@L�pS�̧_�����Aw�Izw�8�����w>��<�5M�Ŵ��9��࿂������ܐC�1����l.~L�M���������"xx���^]�M�êe������p=�r7n%���h���_�p��ïX��Q��{�N�&�)r`�u����ta:�xL��GE0Ӷ'��9p�����Nۖ���rҀ�O�/�C����ӈ�
�o��a���>���\;n��"B����}��$�N���LM��� wDo�����_2�tQ��n�� �V#�Kw�6��J�L���0���"�)\� Tv �ω#����9�6�������(�E53gp�� ��ݻG��σL���I�
-`oK1��T���y-�h���У�h�;�26=��v��>o���)��Z�i�A�����hm(��������[Y�����JJ�:�o�\MA/gd�0K�AH�u2|t��� ���x�ĬH�Y�Ybe�@g]��ϒ,�|���k:���M�a�c�8�����Zd}��Bt�˛�A#š��,p\X�X΂�ѕ�R��~�V߿�:�x���[d�q�d�b]HN�bE�ӳ8|��2�����T��Z����n�z"��OU�2qVN!+f��Ƒ)V�,	2(d_5yF>��Cg��@�Tt�,J}�2�i:ui��^�Ѱ�hC�<C��i���͏;"r_�h(`�J~+���(��K�M���D‾7r��` ^ı+��"�J�Eh�%��:g�&٠L]��)��fu�m���xg%n�u�dcn���W6�yS@�+���mw:��w��]��k�N��Oc���t%�NB�@N:�"��}����G)(5�B�!8(����|"�GYP�XʂJ��)��b�f�G��Y���fj*hH�#�����4LhVa�K�)H(d��>[���/lX,2-	�k�!r�[��|:MS=2��mjK�2G�m�Y�L3<*[=�(���8�"�F��/�8��r0H�7�����e��f�͉�0��G��q���C�fn$�7��x0�9����[J��E9�3�E,��),�)�M�X���Xxx�����{I��1���%�;���.�۬�/|��Xl}4%������=}i��c6�`<[��i%Ň�pi�Vb����>Pp1�7���~@�<F��E�r@�W�ݔ�C˥��j�>�N�s8���m"t������VZ'R���#��|!��A����ی|�7��a$�P�������K�����S��Q��Y��� [��~��q���2 ph"����-T9U�~�a!�ٷ�96,��d.�fZj�蠈���l�.D+�LV�| ��٭��>�qp&�{�� ��~�5�?�Дu(�N��y�<�p�
w���'"b��,£����*�����c�r���7���j ?�N�������������H�:�ZW�va�� F����D�������O�oy�7�7�ȏ3j�q\��l,ʆ�������#|0~X��Zp�0�����p*5���"wh�4 b;��e��.�ɠ��½K�jWx�3`�k1�Q6N ������ѿP�AwSaW��@� zxÑH>��yݰļ�{�����E��@�_�~N�t��J�_���t^p�탷z\r�K��SZc><��S���G/H��Go���7e�Vzve�b<K���2�����δX�WL��o��[�o�W����X���@�ݕ��)��1;����Њ6a��f�=�>9C��õ���7��_)�7?��n7�c����������OAz��_}�e� f4�� ��i�y�Ã��ı:���c.��'�����<�(���!�J�%t9����y�(B����������k7��:N�f>G�i`������,F���Ο�F	$���~�˷j���'Ԧu�k3}~��>!�jd��3W��;�`#���u]��(���e�<L���jH��v�l�������J��ڷI��\��u��~�l	�x��O��?N9�� �&�vK��@oyW#f�Y,�X̀~�lw�&9�K�B/�Ca�����o_�16�{uޟJ.Nӛ�<T����0#�骸Y�F��a���=O2MlM��B����6�3��cX�s�
�2l!������~FG*,A;�����l&Ó���B�c�9<6��R���-�1�~?��7�=x�����)G���n��q��<�e�7����d�ӊ�' p;�ށO�(�˾�1B!yd�a�5����$q[���F m����j�s�CW�U���t��.:��n �  ��G?P�6��}B�b=n��qϻ|�ۖ�H2h��)�Q�[Y(�.wQ�̴$t>]���:|UB���u���5!E;Q³�n�}AƉ8Z!ׇ�/�+D��|n&Z���~B�9�J!kQ�G!r��Z-�T=<��Д�mװ��
U���M��&���nJӽ��BS�8]�����|V�	Y-���N�,���Ч��k7���2>��u�ß�3dvP�U2�x�\�#+}���G�>8�
��� ��VT�-����
G&>�E��gB�$sx�_�T���^t�2n�OeCxr:�<��������VΩ�up�pOљƁV����
=���*f[���/��"�!����x�z��ƀ������r����|�
"	�@�-?�ї�WW P0����.�[����T�BЃa�f�YM��3Y�rxk
&aQ5��Q0-9_���%h;@_ނ� �M�Նɦ�c��
�x���QP}0A7��&�P���=�$a�����W�G@9t����P4Z)"<�5q�=0��v��+��X����3d`���������&`ĵ������|)�������<�$�[]{�������*�oa���O��1�Az��>�`3O����M�]�w�ܞ��ҁ��>r"B��S-��c�s�n!��קp����.����<t�
�<�*�z�me��Q��Zh�-|�$7B�zӧ���*,[���_}kz���9��HB�l@?��f_��a?ݫ���5Nn��?js�7Yo8%���[1��y�[��6To��x�m�|����,��`���m�l܋�{/�m�v]�P�l�X�}��)�}���%�����vL7ǟ�<�c�!���%x�k������eP��$d ��Ą2ll /����rT�-���h�^�햲�"�sB��9�`\	��z�|=����]�BiY,�Y�&A۱�ˌ�=�@2��A��q&�'gr�oL��V��T�zE�	
"LS%h��
_pl)��}��^�
:�`�S�`�yv𖟇oGB��˦z~ޝ&7�m����Dg>膚|6�>τ����V[`�=4�
����2����<���sξp����L��y;����:�2�exL���9�~~���C'ѹX������s6�	d�s��
\N�x����O�zF�g"��{���ns�F$�s"�������go��?-�}D�m[���w��~	|��\}K�ǂ.��D9��=��������E��G����̏D���Ȟc̀&���ע�N4����0��>�ӹ�����G0���1S�'�d#�{�(�[�_�����[��2|�k�7r�J��k^hJ$�]�<�\���G�c����	e���wq�OR}����g��q+4����!�U�v��㍕d�ǭ��K��8�a�:J]��ʟ�(M���i���)�{Lz�D��� �O�7j;c�qL~b��?�M��"�!>vŇ���r�^�����Z&��.�b
X���&8��9}���5����__ ��w"c�":��{j�. 9��{��g\�1P�.�W��M��F<9?�/��_H�&�U�ofm�R����������F�=��$�,�@'��n¸��@��Ы�{Z�V�GWF     