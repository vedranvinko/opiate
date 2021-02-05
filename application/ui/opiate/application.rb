module Opiate
    class Application < Gtk::Application
        def initialize
            super 'com.regularpoe.opiate', Gio::ApplicationFlags::FLAGS_NONE

            signal_connect :activate do |app|
                window = Gtk::ApplicationWindow.new(app)
                window.set_title 'Opiate'
                window.present
            end
        end
    end
end