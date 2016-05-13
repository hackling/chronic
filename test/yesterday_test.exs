defmodule Chronic.YesterdayTest do
  use ExUnit.Case, async: true

  def currently do
    {{ 2015, 5, 9 }, { 9, 0, 0}}
  end

  test "yesterday at 10am" do
    { :ok, time, offset } = Chronic.parse("yesterday at 10am", currently: currently)
    assert time == %Calendar.NaiveDateTime{year: 2015, month: 5, day: 8, hour: 10, min: 0, sec: 0, usec: 0}
    assert offset == 0
  end
end
