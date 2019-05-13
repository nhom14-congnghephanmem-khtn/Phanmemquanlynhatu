﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVC_DataAccessLayers.EntityFramework
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class DB_PrisonManagementEntities : DbContext
    {
        public DB_PrisonManagementEntities()
            : base("name=DB_PrisonManagementEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
    
        public virtual int sp_alterdiagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_alterdiagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_creatediagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_creatediagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_dropdiagram(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_dropdiagram", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagramdefinition_Result> sp_helpdiagramdefinition(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagramdefinition_Result>("sp_helpdiagramdefinition", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagrams_Result> sp_helpdiagrams(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagrams_Result>("sp_helpdiagrams", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<SP_Nguoi_Dung_CheckLogin_Result> SP_Nguoi_Dung_CheckLogin(string user_name, string password, string ma_phong_ban)
        {
            var user_nameParameter = user_name != null ?
                new ObjectParameter("user_name", user_name) :
                new ObjectParameter("user_name", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("password", password) :
                new ObjectParameter("password", typeof(string));
    
            var ma_phong_banParameter = ma_phong_ban != null ?
                new ObjectParameter("ma_phong_ban", ma_phong_ban) :
                new ObjectParameter("ma_phong_ban", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_Nguoi_Dung_CheckLogin_Result>("SP_Nguoi_Dung_CheckLogin", user_nameParameter, passwordParameter, ma_phong_banParameter);
        }
    
        public virtual ObjectResult<SP_Nguoi_Dung_GetElementByID_Result> SP_Nguoi_Dung_GetElementByID(string ma_so)
        {
            var ma_soParameter = ma_so != null ?
                new ObjectParameter("ma_so", ma_so) :
                new ObjectParameter("ma_so", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_Nguoi_Dung_GetElementByID_Result>("SP_Nguoi_Dung_GetElementByID", ma_soParameter);
        }
    
        public virtual ObjectResult<SP_Nguoi_Dung_GetElements_Result> SP_Nguoi_Dung_GetElements()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_Nguoi_Dung_GetElements_Result>("SP_Nguoi_Dung_GetElements");
        }
    
        public virtual ObjectResult<SP_Phong_Ban_GetElementByID_Result> SP_Phong_Ban_GetElementByID(string ma_phong_ban)
        {
            var ma_phong_banParameter = ma_phong_ban != null ?
                new ObjectParameter("ma_phong_ban", ma_phong_ban) :
                new ObjectParameter("ma_phong_ban", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_Phong_Ban_GetElementByID_Result>("SP_Phong_Ban_GetElementByID", ma_phong_banParameter);
        }
    
        public virtual ObjectResult<SP_Phong_Ban_GetElements_Result> SP_Phong_Ban_GetElements()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_Phong_Ban_GetElements_Result>("SP_Phong_Ban_GetElements");
        }
    
        public virtual int sp_renamediagram(string diagramname, Nullable<int> owner_id, string new_diagramname)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var new_diagramnameParameter = new_diagramname != null ?
                new ObjectParameter("new_diagramname", new_diagramname) :
                new ObjectParameter("new_diagramname", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_renamediagram", diagramnameParameter, owner_idParameter, new_diagramnameParameter);
        }
    
        public virtual int sp_upgraddiagrams()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_upgraddiagrams");
        }
    
        public virtual ObjectResult<SP_Pham_Nhan_GetElements_Result> SP_Pham_Nhan_GetElements()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_Pham_Nhan_GetElements_Result>("SP_Pham_Nhan_GetElements");
        }
    
        public virtual int SP_Pham_Nhan_InsertOrUpdate(string ma_so, string ho_ten, Nullable<System.DateTime> ngay_sinh, string noi_sinh, string pham_toi, string sdt_nguoi_than, Nullable<decimal> tong_so_ngay_giam_giu, Nullable<decimal> muc_do_pham_toi, Nullable<System.DateTime> ngay_tiep_nhan, Nullable<bool> tinh_trang_tiep_nhan, string ma_nguoi_than, Nullable<bool> check)
        {
            var ma_soParameter = ma_so != null ?
                new ObjectParameter("ma_so", ma_so) :
                new ObjectParameter("ma_so", typeof(string));
    
            var ho_tenParameter = ho_ten != null ?
                new ObjectParameter("ho_ten", ho_ten) :
                new ObjectParameter("ho_ten", typeof(string));
    
            var ngay_sinhParameter = ngay_sinh.HasValue ?
                new ObjectParameter("ngay_sinh", ngay_sinh) :
                new ObjectParameter("ngay_sinh", typeof(System.DateTime));
    
            var noi_sinhParameter = noi_sinh != null ?
                new ObjectParameter("noi_sinh", noi_sinh) :
                new ObjectParameter("noi_sinh", typeof(string));
    
            var pham_toiParameter = pham_toi != null ?
                new ObjectParameter("pham_toi", pham_toi) :
                new ObjectParameter("pham_toi", typeof(string));
    
            var sdt_nguoi_thanParameter = sdt_nguoi_than != null ?
                new ObjectParameter("sdt_nguoi_than", sdt_nguoi_than) :
                new ObjectParameter("sdt_nguoi_than", typeof(string));
    
            var tong_so_ngay_giam_giuParameter = tong_so_ngay_giam_giu.HasValue ?
                new ObjectParameter("tong_so_ngay_giam_giu", tong_so_ngay_giam_giu) :
                new ObjectParameter("tong_so_ngay_giam_giu", typeof(decimal));
    
            var muc_do_pham_toiParameter = muc_do_pham_toi.HasValue ?
                new ObjectParameter("muc_do_pham_toi", muc_do_pham_toi) :
                new ObjectParameter("muc_do_pham_toi", typeof(decimal));
    
            var ngay_tiep_nhanParameter = ngay_tiep_nhan.HasValue ?
                new ObjectParameter("ngay_tiep_nhan", ngay_tiep_nhan) :
                new ObjectParameter("ngay_tiep_nhan", typeof(System.DateTime));
    
            var tinh_trang_tiep_nhanParameter = tinh_trang_tiep_nhan.HasValue ?
                new ObjectParameter("tinh_trang_tiep_nhan", tinh_trang_tiep_nhan) :
                new ObjectParameter("tinh_trang_tiep_nhan", typeof(bool));
    
            var ma_nguoi_thanParameter = ma_nguoi_than != null ?
                new ObjectParameter("ma_nguoi_than", ma_nguoi_than) :
                new ObjectParameter("ma_nguoi_than", typeof(string));
    
            var checkParameter = check.HasValue ?
                new ObjectParameter("check", check) :
                new ObjectParameter("check", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("SP_Pham_Nhan_InsertOrUpdate", ma_soParameter, ho_tenParameter, ngay_sinhParameter, noi_sinhParameter, pham_toiParameter, sdt_nguoi_thanParameter, tong_so_ngay_giam_giuParameter, muc_do_pham_toiParameter, ngay_tiep_nhanParameter, tinh_trang_tiep_nhanParameter, ma_nguoi_thanParameter, checkParameter);
        }
    
        public virtual ObjectResult<SP_Tinh_Trang_Pham_Nhan_GetElements_Result> SP_Tinh_Trang_Pham_Nhan_GetElements()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_Tinh_Trang_Pham_Nhan_GetElements_Result>("SP_Tinh_Trang_Pham_Nhan_GetElements");
        }
    
        public virtual ObjectResult<SP_Tinh_Trang_Thong_Tin_Pham_Nhan_GetElements_Result> SP_Tinh_Trang_Thong_Tin_Pham_Nhan_GetElements()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_Tinh_Trang_Thong_Tin_Pham_Nhan_GetElements_Result>("SP_Tinh_Trang_Thong_Tin_Pham_Nhan_GetElements");
        }
    
        public virtual int SP_Tinh_Trang_Thong_Tin_Pham_Nhan_InsertOrUpdate(string ma_so, string ho_ten, Nullable<System.DateTime> ngay_sinh, string noi_sinh, string pham_toi, string sdt_nguoi_than, Nullable<decimal> tong_so_ngay_giam_giu, Nullable<decimal> muc_do_pham_toi, Nullable<System.DateTime> ngay_tiep_nhan, Nullable<bool> tinh_trang_tiep_nhan, string ma_nguoi_than, Nullable<int> loai_suc_khoe, Nullable<decimal> so_ngay_da_giam_giu, Nullable<System.DateTime> ngay_phong_thích, Nullable<int> khau_phan_an, string chi_tiet_khau_phan, Nullable<bool> check)
        {
            var ma_soParameter = ma_so != null ?
                new ObjectParameter("ma_so", ma_so) :
                new ObjectParameter("ma_so", typeof(string));
    
            var ho_tenParameter = ho_ten != null ?
                new ObjectParameter("ho_ten", ho_ten) :
                new ObjectParameter("ho_ten", typeof(string));
    
            var ngay_sinhParameter = ngay_sinh.HasValue ?
                new ObjectParameter("ngay_sinh", ngay_sinh) :
                new ObjectParameter("ngay_sinh", typeof(System.DateTime));
    
            var noi_sinhParameter = noi_sinh != null ?
                new ObjectParameter("noi_sinh", noi_sinh) :
                new ObjectParameter("noi_sinh", typeof(string));
    
            var pham_toiParameter = pham_toi != null ?
                new ObjectParameter("pham_toi", pham_toi) :
                new ObjectParameter("pham_toi", typeof(string));
    
            var sdt_nguoi_thanParameter = sdt_nguoi_than != null ?
                new ObjectParameter("sdt_nguoi_than", sdt_nguoi_than) :
                new ObjectParameter("sdt_nguoi_than", typeof(string));
    
            var tong_so_ngay_giam_giuParameter = tong_so_ngay_giam_giu.HasValue ?
                new ObjectParameter("tong_so_ngay_giam_giu", tong_so_ngay_giam_giu) :
                new ObjectParameter("tong_so_ngay_giam_giu", typeof(decimal));
    
            var muc_do_pham_toiParameter = muc_do_pham_toi.HasValue ?
                new ObjectParameter("muc_do_pham_toi", muc_do_pham_toi) :
                new ObjectParameter("muc_do_pham_toi", typeof(decimal));
    
            var ngay_tiep_nhanParameter = ngay_tiep_nhan.HasValue ?
                new ObjectParameter("ngay_tiep_nhan", ngay_tiep_nhan) :
                new ObjectParameter("ngay_tiep_nhan", typeof(System.DateTime));
    
            var tinh_trang_tiep_nhanParameter = tinh_trang_tiep_nhan.HasValue ?
                new ObjectParameter("tinh_trang_tiep_nhan", tinh_trang_tiep_nhan) :
                new ObjectParameter("tinh_trang_tiep_nhan", typeof(bool));
    
            var ma_nguoi_thanParameter = ma_nguoi_than != null ?
                new ObjectParameter("ma_nguoi_than", ma_nguoi_than) :
                new ObjectParameter("ma_nguoi_than", typeof(string));
    
            var loai_suc_khoeParameter = loai_suc_khoe.HasValue ?
                new ObjectParameter("loai_suc_khoe", loai_suc_khoe) :
                new ObjectParameter("loai_suc_khoe", typeof(int));
    
            var so_ngay_da_giam_giuParameter = so_ngay_da_giam_giu.HasValue ?
                new ObjectParameter("so_ngay_da_giam_giu", so_ngay_da_giam_giu) :
                new ObjectParameter("so_ngay_da_giam_giu", typeof(decimal));
    
            var ngay_phong_thíchParameter = ngay_phong_thích.HasValue ?
                new ObjectParameter("ngay_phong_thích", ngay_phong_thích) :
                new ObjectParameter("ngay_phong_thích", typeof(System.DateTime));
    
            var khau_phan_anParameter = khau_phan_an.HasValue ?
                new ObjectParameter("khau_phan_an", khau_phan_an) :
                new ObjectParameter("khau_phan_an", typeof(int));
    
            var chi_tiet_khau_phanParameter = chi_tiet_khau_phan != null ?
                new ObjectParameter("chi_tiet_khau_phan", chi_tiet_khau_phan) :
                new ObjectParameter("chi_tiet_khau_phan", typeof(string));
    
            var checkParameter = check.HasValue ?
                new ObjectParameter("check", check) :
                new ObjectParameter("check", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("SP_Tinh_Trang_Thong_Tin_Pham_Nhan_InsertOrUpdate", ma_soParameter, ho_tenParameter, ngay_sinhParameter, noi_sinhParameter, pham_toiParameter, sdt_nguoi_thanParameter, tong_so_ngay_giam_giuParameter, muc_do_pham_toiParameter, ngay_tiep_nhanParameter, tinh_trang_tiep_nhanParameter, ma_nguoi_thanParameter, loai_suc_khoeParameter, so_ngay_da_giam_giuParameter, ngay_phong_thíchParameter, khau_phan_anParameter, chi_tiet_khau_phanParameter, checkParameter);
        }
    
        public virtual ObjectResult<SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElements_Result> SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElements()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElements_Result>("SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElements");
        }
    
        public virtual ObjectResult<SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElementByID_Result> SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElementByID(string ma_so)
        {
            var ma_soParameter = ma_so != null ?
                new ObjectParameter("ma_so", ma_so) :
                new ObjectParameter("ma_so", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElementByID_Result>("SP_Tinh_Trang_Cham_Soc_Pham_Nhan_GetElementByID", ma_soParameter);
        }
    
        public virtual int SP_Tinh_Trang_Cham_Soc_Pham_Nhan_InsertOrUpdate(string ma_so, Nullable<int> loai_suc_khoe, Nullable<int> khau_phan_an, Nullable<System.DateTime> ngay_gio, Nullable<bool> tinh_trang, string ghi_chu)
        {
            var ma_soParameter = ma_so != null ?
                new ObjectParameter("ma_so", ma_so) :
                new ObjectParameter("ma_so", typeof(string));
    
            var loai_suc_khoeParameter = loai_suc_khoe.HasValue ?
                new ObjectParameter("loai_suc_khoe", loai_suc_khoe) :
                new ObjectParameter("loai_suc_khoe", typeof(int));
    
            var khau_phan_anParameter = khau_phan_an.HasValue ?
                new ObjectParameter("khau_phan_an", khau_phan_an) :
                new ObjectParameter("khau_phan_an", typeof(int));
    
            var ngay_gioParameter = ngay_gio.HasValue ?
                new ObjectParameter("ngay_gio", ngay_gio) :
                new ObjectParameter("ngay_gio", typeof(System.DateTime));
    
            var tinh_trangParameter = tinh_trang.HasValue ?
                new ObjectParameter("tinh_trang", tinh_trang) :
                new ObjectParameter("tinh_trang", typeof(bool));
    
            var ghi_chuParameter = ghi_chu != null ?
                new ObjectParameter("ghi_chu", ghi_chu) :
                new ObjectParameter("ghi_chu", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("SP_Tinh_Trang_Cham_Soc_Pham_Nhan_InsertOrUpdate", ma_soParameter, loai_suc_khoeParameter, khau_phan_anParameter, ngay_gioParameter, tinh_trangParameter, ghi_chuParameter);
        }
    }
}
