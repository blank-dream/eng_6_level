import request from '@/utils/request'

// 查询报名管理列表
export function listRegistration(query) {
  return request({
    url: '/sys/registration/list',
    method: 'get',
    params: query
  })
}

// 查询报名管理详细
export function getRegistration(registrationId) {
  return request({
    url: '/sys/registration/' + registrationId,
    method: 'get'
  })
}

// 新增报名管理
export function addRegistration(data) {
  return request({
    url: '/sys/registration',
    method: 'post',
    data: data
  })
}

// 修改报名管理
export function updateRegistration(data) {
  return request({
    url: '/sys/registration',
    method: 'put',
    data: data
  })
}

// 删除报名管理
export function delRegistration(registrationId) {
  return request({
    url: '/sys/registration/' + registrationId,
    method: 'delete'
  })
}
