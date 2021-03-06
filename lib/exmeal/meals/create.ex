defmodule Exmeal.Meals.Create do
  alias Exmeal.{
    Error,
    Repo,
    Meal
  }

  def call(params) do
    params
    |> Meal.changeset()
    |> Repo.insert()
  end
end
