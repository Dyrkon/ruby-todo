# frozen_string_literal: true

require 'test_helper'

class TaskListTest < ActiveSupport::TestCase
  test 'should save model' do
    test_task = TaskList.new(name: 'Clean up')
    assert test_task.valid?
  end

  test 'task list name too long' do
    test_task = TaskList.new(name: '0123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899')
    assert_not test_task.valid?
  end

  test 'regex non alphanumeric' do
    test_task = TaskList.new(name: 'N8ame(')
    assert_not test_task.valid?
  end

  test 'task list regex all numerical number' do
    test_task = TaskList.new(name: '1243264347345(', hidden: true)
    assert_not test_task.valid?
  end

  test 'task list missing name' do
    test_task = TaskList.new(name: '', hidden: true)
    assert_not test_task.valid?
  end

  test 'task list just spaces' do
    test_task = TaskList.new(name: '    ')
    assert_not test_task.valid?
  end
end
