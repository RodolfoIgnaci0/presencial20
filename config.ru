# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/index'
      [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]
    elsif env['REQUEST_PATH'] == '/otro'
      [200, { 'Content-type' => 'text/html' }, ['<h1> Estás en otro landing! </h1>']]
    else
      [404, { 'Content-type' => 'text/html' }, [File.read('404.html')]]
    end
  end
end

run MiPrimeraWebApp.new
