module TransactionHelper
  def with_transaction
    ActiveRecord::Base.transaction do
      yield
    end
  rescue ActiveRecord::RecordInvalid => e
    # You can log the error or handle it as needed
    raise e
  end
end
