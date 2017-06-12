//получаем и присваиваем наш уникальный айди
   var buffer = argument[ 0 ];
   var msgid = buffer_read( buffer , buffer_u8 );
   switch( msgid ) {
      case 1:
         global.myid = buffer_read( buffer , buffer_u16 );
      break;
   }
