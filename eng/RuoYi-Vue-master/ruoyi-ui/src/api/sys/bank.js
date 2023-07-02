import request from '@/utils/request'

// 查询试题录入列表
export function listBank(query) {
  return request({
    url: '/sys/bank/list',
    method: 'get',
    params: query
  })
}

// 查询试题录入详细
export function getBank(questionId) {
  return request({
    url: '/sys/bank/' + questionId,
    method: 'get'
  })
}

// 新增试题录入
export function addBank(data) {
  return request({
    url: '/sys/bank',
    method: 'post',
    data: data
  })
}

// 修改试题录入
export function updateBank(data) {
  return request({
    url: '/sys/bank',
    method: 'put',
    data: data
  })
}

// 删除试题录入
export function delBank(questionId) {
  return request({
    url: '/sys/bank/' + questionId,
    method: 'delete'
  })
}
