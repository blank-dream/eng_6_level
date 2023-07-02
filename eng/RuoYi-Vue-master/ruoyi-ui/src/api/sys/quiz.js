import request from '@/utils/request'

// 查询成绩查询列表
export function listQuiz(query) {
  return request({
    url: '/sys/quiz/list',
    method: 'get',
    params: query
  })
}

// 查询成绩查询详细
export function getQuiz(answerId) {
  return request({
    url: '/sys/quiz/' + answerId,
    method: 'get'
  })
}

// 新增成绩查询
export function addQuiz(data) {
  return request({
    url: '/sys/quiz',
    method: 'post',
    data: data
  })
}

// 修改成绩查询
export function updateQuiz(data) {
  return request({
    url: '/sys/quiz',
    method: 'put',
    data: data
  })
}

// 删除成绩查询
export function delQuiz(answerId) {
  return request({
    url: '/sys/quiz/' + answerId,
    method: 'delete'
  })
}
