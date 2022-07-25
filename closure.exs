message = "Test message"

send_message = fn -> 
  IO.inspect("Sending message"); 
  Process.sleep(500);
  IO.inspect("Message sended: #{message}")
end

async_message_process = fn message_sender ->
  IO.inspect("Initializing message module");
  message_sender.();
  IO.inspect("Success exit process")
end

spawn(async_message_process.(send_message))
