# frozen_string_literal: true

list1 = TaskList.create(name: 'Cleaning')
list2 = TaskList.create(name: 'Dishes')

Task.create(name: 'Clean up 1', description: 'Clean up the half of the rooms', deadline: Date.today - 50,
            task_list_id: list1.id)
Task.create(name: 'Clean up 2', description: 'Clean up the other half of the rooms', deadline: Date.today + 40,
            task_list_id: list1.id)
Task.create(name: 'Do the dishes', description: 'Do the dishes', deadline: Date.today - 10, task_list_id: list2.id)
Task.create(name: 'Put the dishes back', description: 'Put the dishes back where they belong',
            deadline: Date.today + 30, task_list_id: list2.id)
