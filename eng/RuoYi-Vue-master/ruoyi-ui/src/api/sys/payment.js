import request from '@/utils/request'

// 查询缴费管理列表
export function listPayment(query) {
  return request({
    url: '/sys/payment/list',
    method: 'get',
    params: query
  })
}

// 查询缴费管理详细
export function getPayment(paymentId) {
  return request({
    url: '/sys/payment/' + paymentId,
    method: 'get'
  })
}

// 新增缴费管理
export function addPayment(data) {
  return request({
    url: '/sys/payment',
    method: 'post',
    data: data
  })
}

// 修改缴费管理
export function updatePayment(data) {
  return request({
    url: '/sys/payment',
    method: 'put',
    data: data
  })
}

// 删除缴费管理
export function delPayment(paymentId) {
  return request({
    url: '/sys/payment/' + paymentId,
    method: 'delete'
  })
}
