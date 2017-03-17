module Admin
  class TransactionsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Transaction.order(happened_at: :desc).page(page)
    # end
    #
    # private
    #
    # def page
    #   params[:page] || 10
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Transaction.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information

    before_filter :default_params

    def default_params
      params[:order] ||= "happened_at"
      params[:direction] ||= "desc"
    end
  end
end
