<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Đăng Ký</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<style>


</style>
<body>
<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-body">
            <h3 class="text-primary mb-4" style="background-color: #e3f2fd; padding: 10px; border-radius: 5px;">
                ĐĂNG KÝ
            </h3>



            <p class="small"><i class="fa fa-diamond"></i> Đăng ký nhanh qua Facebook</p>

            <div class="container">
                <div class="row align-items-center">


                    <!-- Button Section -->
                    <div class="col-md-5 text-left">
                        <button class="btn btn-primary btn-lg mb-4">
                            <i class="fa-brands fa-facebook"></i> Login with Facebook
                        </button>
                    </div>
                    <div class="col-md-7">
                        <div class="alert alert-info text-center" role="alert">
                            <strong>Thưởng ngay 50 ePoints</strong> khi đăng ký mới & 5 ePoints cho mỗi lượt chia sẻ Facebook.
                            Tích lũy nhiều ePoints khi Upload tài liệu >>
                        </div>
                    </div>
                </div>
            </div>

            <form>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <input type="text" class="form-control" placeholder="Nhập Username">
                    </div>
                    <div class="form-group col-md-6">
                        <input type="text" class="form-control" placeholder="Nhập Họ và Tên">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <input type="password" class="form-control" placeholder="Nhập mật khẩu">
                    </div>
                    <div class="form-group col-md-2">
                        <select class="form-control">
                            <option>Giới Tính</option>
                            <option>Nam</option>
                            <option>Nữ</option>
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <input type="password" class="form-control" placeholder="Nhập lại mật khẩu">
                    </div>
                    <div class="form-group col-md-2">
                        <select class="form-control">
                            <option>Ngày</option>
                            <% for (int i = 1; i <= 31; i++) {%>
                            <option value="<%= i%>"><%=i%>
                            </option>
                            <% } %>

                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <select class="form-control">
                            <option value="">Tháng</option>
                            <% for (int i = 1; i <= 12; i++) { %>
                            <option value="<%= i %>">Tháng <%= i %>
                            </option>
                            <% } %>
                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <select class="form-control">
                            <option>Năm</option>
                            <% int currentYear = java.util.Calendar.getInstance().get(java.util.Calendar.YEAR); %>
                            <% for (int i = currentYear; i >= 1900; i--) { %>
                            <option value="<%= i %>"><%= i %></option>
                            <% } %>
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <input type="email" class="form-control" placeholder="Nhập địa chỉ Email">
                    </div>
                    <div class="form-group col-md-2">
                        <select class="form-control">
                            <option value="">Tỉnh/TP</option>
                            <option value="Hà Nội">Hà Nội</option>
                            <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                            <option value="Hải Phòng">Hải Phòng</option>
                            <option value="Đà Nẵng">Đà Nẵng</option>
                            <option value="Cần Thơ">Cần Thơ</option>
                            <option value="An Giang">An Giang</option>
                            <option value="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu</option>
                            <option value="Bắc Giang">Bắc Giang</option>
                            <option value="Bắc Kạn">Bắc Kạn</option>
                            <option value="Bạc Liêu">Bạc Liêu</option>
                            <option value="Bắc Ninh">Bắc Ninh</option>
                            <option value="Bến Tre">Bến Tre</option>
                            <option value="Bình Dương">Bình Dương</option>
                            <option value="Bình Phước">Bình Phước</option>
                            <option value="Bình Thuận">Bình Thuận</option>
                            <option value="Cà Mau">Cà Mau</option>
                            <option value="Cao Bằng">Cao Bằng</option>
                            <option value="Đắk Lắk">Đắk Lắk</option>
                            <option value="Đắk Nông">Đắk Nông</option>
                            <option value="Điện Biên">Điện Biên</option>
                            <option value="Đồng Nai">Đồng Nai</option>
                            <option value="Đồng Tháp">Đồng Tháp</option>
                            <option value="Gia Lai">Gia Lai</option>
                            <option value="Hà Giang">Hà Giang</option>
                            <option value="Hà Nam">Hà Nam</option>
                            <option value="Hà Tĩnh">Hà Tĩnh</option>
                            <option value="Hải Dương">Hải Dương</option>
                            <option value="Hưng Yên">Hưng Yên</option>
                            <option value="Khánh Hòa">Khánh Hòa</option>
                            <option value="Kiên Giang">Kiên Giang</option>
                            <option value="Kon Tum">Kon Tum</option>
                            <option value="Lai Châu">Lai Châu</option>
                            <option value="Lâm Đồng">Lâm Đồng</option>
                            <option value="Lạng Sơn">Lạng Sơn</option>
                            <option value="Lào Cai">Lào Cai</option>
                            <option value="Long An">Long An</option>
                            <option value="Nam Định">Nam Định</option>
                            <option value="Nghệ An">Nghệ An</option>
                            <option value="Ninh Bình">Ninh Bình</option>
                            <option value="Ninh Thuận">Ninh Thuận</option>
                            <option value="Phú Thọ">Phú Thọ</option>
                            <option value="Phú Yên">Phú Yên</option>
                            <option value="Quảng Bình">Quảng Bình</option>
                            <option value="Quảng Nam">Quảng Nam</option>
                            <option value="Quảng Ngãi">Quảng Ngãi</option>
                            <option value="Quảng Ninh">Quảng Ninh</option>
                            <option value="Quảng Trị">Quảng Trị</option>
                            <option value="Sóc Trăng">Sóc Trăng</option>
                            <option value="Sơn La">Sơn La</option>
                            <option value="Tây Ninh">Tây Ninh</option>
                            <option value="Thái Bình">Thái Bình</option>
                            <option value="Thái Nguyên">Thái Nguyên</option>
                            <option value="Thanh Hóa">Thanh Hóa</option>
                            <option value="Thừa Thiên Huế">Thừa Thiên Huế</option>
                            <option value="Tiền Giang">Tiền Giang</option>
                            <option value="Trà Vinh">Trà Vinh</option>
                            <option value="Tuyên Quang">Tuyên Quang</option>
                            <option value="Vĩnh Long">Vĩnh Long</option>
                            <option value="Vĩnh Phúc">Vĩnh Phúc</option>
                            <option value="Yên Bái">Yên Bái</option>
                        </select>
                    </div>

                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <input type="email" class="form-control" placeholder="Nhập lại địa chỉ Email">
                    </div>

                </div>
                <div class="form-row align-items-center">
                    <button type="submit" class="btn btn-primary mr-2">Đăng ký</button>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="terms">
                        <label class="form-check-label" for="terms">Tôi đồng ý với các Chính Sách và Thỏa Thuận
                            Sử Dụng </label>
                    </div>
                </div>
            </form>

            <p class="text-center mt-4">
                <a href="#">Bạn đã có tài khoản chưa? nếu có rồi tới Đăng nhập</a>
            </p>
        </div>
    </div>
</div>
<!-- Bootstrap JS, Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>