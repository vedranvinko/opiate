module Opiate
  class ApplicationWindow < Gtk::ApplicationWindow
    type_register

    class << self
      def init
        set_template resource: '/com/regularpoe/opiate/ui/application_window.ui'
      end
    end

    def initialize(application)
      super application: application

      set_title 'Opiate'
    end
  end
end
