 var buffer = argument[ 0 ];//всё понятно
   var socket = argument[ 1 ];
   var msgid = buffer_read( buffer , buffer_u8 );//читаем из buffer байт, который может быть от 0 до 255
   switch( msgid ) {
      case 1://если байт который мы прочитали равен 1, то...
         global.max_players+=1//всего игроков было на сервере увеличиваем на один
         buffer_seek( Buffer , buffer_seek_start , 0 );//уже писал выше
         buffer_write( Buffer , buffer_u8 , 1 );/*записываем в Buffer значение 1(значение должно быть уникальным для разных данных, допустим что бы отправить координаты надо будет писать 2, а что бы получить ник игрока 3 и т.д) и указываем что оно от 0 до 255(тип буффера - buffer_u8, ниже приведу таблицу из справки GM:S)*/
         buffer_write( Buffer , buffer_u16,  global.max_players);//записываем уникальный айди для клиента в будущем
         network_send_packet( socket , Buffer , buffer_tell( Buffer ) );/*отправляем буффер клиенту который послал запрос на получение этих данных (собственно сам игрок, буффер, размер отправляемого буффера). Отправляет клиенту уникальный айди*/
      break;
   }
