import request from '@/utils/request'

// 查询学生信息列表
export function listInformation(query) {
  return request({
    url: '/sys/information/list',
    method: 'get',
    params: query
  })
}

// 查询学生信息详细
export function getInformation(studentId) {
  return request({
    url: '/sys/information/' + studentId,
    method: 'get'
  })
}

// 新增学生信息
export function addInformation(data) {
  return request({
    url: '/sys/information',
    method: 'post',
    data: data
  })
}

// 修改学生信息
export function updateInformation(data) {
  return request({
    url: '/sys/information',
    method: 'put',
    data: data
  })
}

// 删除学生信息
export function delInformation(studentId) {
  return request({
    url: '/sys/information/' + studentId,
    method: 'delete'
  })
}
