﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LoginSignup.KuberXServiceReference {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="UserModel", Namespace="http://schemas.datacontract.org/2004/07/KuberXServices")]
    [System.SerializableAttribute()]
    public partial class UserModel : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string EmailField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string PasswordField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Email {
            get {
                return this.EmailField;
            }
            set {
                if ((object.ReferenceEquals(this.EmailField, value) != true)) {
                    this.EmailField = value;
                    this.RaisePropertyChanged("Email");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Password {
            get {
                return this.PasswordField;
            }
            set {
                if ((object.ReferenceEquals(this.PasswordField, value) != true)) {
                    this.PasswordField = value;
                    this.RaisePropertyChanged("Password");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="registrationmodel", Namespace="http://schemas.datacontract.org/2004/07/KuberXServices")]
    [System.SerializableAttribute()]
    public partial class registrationmodel : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string FirstNameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string LastNameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int EmployeeIDField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string OfficialEmailField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string PasswordField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string FirstName {
            get {
                return this.FirstNameField;
            }
            set {
                if ((object.ReferenceEquals(this.FirstNameField, value) != true)) {
                    this.FirstNameField = value;
                    this.RaisePropertyChanged("FirstName");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string LastName {
            get {
                return this.LastNameField;
            }
            set {
                if ((object.ReferenceEquals(this.LastNameField, value) != true)) {
                    this.LastNameField = value;
                    this.RaisePropertyChanged("LastName");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=2)]
        public int EmployeeID {
            get {
                return this.EmployeeIDField;
            }
            set {
                if ((this.EmployeeIDField.Equals(value) != true)) {
                    this.EmployeeIDField = value;
                    this.RaisePropertyChanged("EmployeeID");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=3)]
        public string OfficialEmail {
            get {
                return this.OfficialEmailField;
            }
            set {
                if ((object.ReferenceEquals(this.OfficialEmailField, value) != true)) {
                    this.OfficialEmailField = value;
                    this.RaisePropertyChanged("OfficialEmail");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=4)]
        public string Password {
            get {
                return this.PasswordField;
            }
            set {
                if ((object.ReferenceEquals(this.PasswordField, value) != true)) {
                    this.PasswordField = value;
                    this.RaisePropertyChanged("Password");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="AdminModel", Namespace="http://schemas.datacontract.org/2004/07/KuberXServices")]
    [System.SerializableAttribute()]
    public partial class AdminModel : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string adm_EmailField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string adm_PasswordField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string adm_Email {
            get {
                return this.adm_EmailField;
            }
            set {
                if ((object.ReferenceEquals(this.adm_EmailField, value) != true)) {
                    this.adm_EmailField = value;
                    this.RaisePropertyChanged("adm_Email");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string adm_Password {
            get {
                return this.adm_PasswordField;
            }
            set {
                if ((object.ReferenceEquals(this.adm_PasswordField, value) != true)) {
                    this.adm_PasswordField = value;
                    this.RaisePropertyChanged("adm_Password");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="GetAdminDetailsModel", Namespace="http://schemas.datacontract.org/2004/07/KuberXServices")]
    [System.SerializableAttribute()]
    public partial class GetAdminDetailsModel : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string adm_FirstNameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string adm_LastNameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int adm_AdminIDField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string adm_OfficialEmailField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string adm_PasswordField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string adm_FirstName {
            get {
                return this.adm_FirstNameField;
            }
            set {
                if ((object.ReferenceEquals(this.adm_FirstNameField, value) != true)) {
                    this.adm_FirstNameField = value;
                    this.RaisePropertyChanged("adm_FirstName");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string adm_LastName {
            get {
                return this.adm_LastNameField;
            }
            set {
                if ((object.ReferenceEquals(this.adm_LastNameField, value) != true)) {
                    this.adm_LastNameField = value;
                    this.RaisePropertyChanged("adm_LastName");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=2)]
        public int adm_AdminID {
            get {
                return this.adm_AdminIDField;
            }
            set {
                if ((this.adm_AdminIDField.Equals(value) != true)) {
                    this.adm_AdminIDField = value;
                    this.RaisePropertyChanged("adm_AdminID");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=3)]
        public string adm_OfficialEmail {
            get {
                return this.adm_OfficialEmailField;
            }
            set {
                if ((object.ReferenceEquals(this.adm_OfficialEmailField, value) != true)) {
                    this.adm_OfficialEmailField = value;
                    this.RaisePropertyChanged("adm_OfficialEmail");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=4)]
        public string adm_Password {
            get {
                return this.adm_PasswordField;
            }
            set {
                if ((object.ReferenceEquals(this.adm_PasswordField, value) != true)) {
                    this.adm_PasswordField = value;
                    this.RaisePropertyChanged("adm_Password");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="AdminFeedbackModel", Namespace="http://schemas.datacontract.org/2004/07/KuberXServices")]
    [System.SerializableAttribute()]
    public partial class AdminFeedbackModel : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string CommunicationField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int Employee_IDField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string Employee_NameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string OtherSkillsField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string RecommendedSkillsField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string ResultField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string Skill1Field;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string Skill2Field;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string Skill3Field;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string Skill4Field;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string Skill5Field;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Communication {
            get {
                return this.CommunicationField;
            }
            set {
                if ((object.ReferenceEquals(this.CommunicationField, value) != true)) {
                    this.CommunicationField = value;
                    this.RaisePropertyChanged("Communication");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int Employee_ID {
            get {
                return this.Employee_IDField;
            }
            set {
                if ((this.Employee_IDField.Equals(value) != true)) {
                    this.Employee_IDField = value;
                    this.RaisePropertyChanged("Employee_ID");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Employee_Name {
            get {
                return this.Employee_NameField;
            }
            set {
                if ((object.ReferenceEquals(this.Employee_NameField, value) != true)) {
                    this.Employee_NameField = value;
                    this.RaisePropertyChanged("Employee_Name");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string OtherSkills {
            get {
                return this.OtherSkillsField;
            }
            set {
                if ((object.ReferenceEquals(this.OtherSkillsField, value) != true)) {
                    this.OtherSkillsField = value;
                    this.RaisePropertyChanged("OtherSkills");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string RecommendedSkills {
            get {
                return this.RecommendedSkillsField;
            }
            set {
                if ((object.ReferenceEquals(this.RecommendedSkillsField, value) != true)) {
                    this.RecommendedSkillsField = value;
                    this.RaisePropertyChanged("RecommendedSkills");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Result {
            get {
                return this.ResultField;
            }
            set {
                if ((object.ReferenceEquals(this.ResultField, value) != true)) {
                    this.ResultField = value;
                    this.RaisePropertyChanged("Result");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Skill1 {
            get {
                return this.Skill1Field;
            }
            set {
                if ((object.ReferenceEquals(this.Skill1Field, value) != true)) {
                    this.Skill1Field = value;
                    this.RaisePropertyChanged("Skill1");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Skill2 {
            get {
                return this.Skill2Field;
            }
            set {
                if ((object.ReferenceEquals(this.Skill2Field, value) != true)) {
                    this.Skill2Field = value;
                    this.RaisePropertyChanged("Skill2");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Skill3 {
            get {
                return this.Skill3Field;
            }
            set {
                if ((object.ReferenceEquals(this.Skill3Field, value) != true)) {
                    this.Skill3Field = value;
                    this.RaisePropertyChanged("Skill3");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Skill4 {
            get {
                return this.Skill4Field;
            }
            set {
                if ((object.ReferenceEquals(this.Skill4Field, value) != true)) {
                    this.Skill4Field = value;
                    this.RaisePropertyChanged("Skill4");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Skill5 {
            get {
                return this.Skill5Field;
            }
            set {
                if ((object.ReferenceEquals(this.Skill5Field, value) != true)) {
                    this.Skill5Field = value;
                    this.RaisePropertyChanged("Skill5");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="KuberXServiceReference.IUser")]
    public interface IUser {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IUser/ValidateUser", ReplyAction="http://tempuri.org/IUser/ValidateUserResponse")]
        bool ValidateUser(LoginSignup.KuberXServiceReference.UserModel user);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IUser/ValidateUser", ReplyAction="http://tempuri.org/IUser/ValidateUserResponse")]
        System.Threading.Tasks.Task<bool> ValidateUserAsync(LoginSignup.KuberXServiceReference.UserModel user);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IUserChannel : LoginSignup.KuberXServiceReference.IUser, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class UserClient : System.ServiceModel.ClientBase<LoginSignup.KuberXServiceReference.IUser>, LoginSignup.KuberXServiceReference.IUser {
        
        public UserClient() {
        }
        
        public UserClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public UserClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public UserClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public UserClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool ValidateUser(LoginSignup.KuberXServiceReference.UserModel user) {
            return base.Channel.ValidateUser(user);
        }
        
        public System.Threading.Tasks.Task<bool> ValidateUserAsync(LoginSignup.KuberXServiceReference.UserModel user) {
            return base.Channel.ValidateUserAsync(user);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="KuberXServiceReference.IRegistration")]
    public interface IRegistration {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IRegistration/SaveUser", ReplyAction="http://tempuri.org/IRegistration/SaveUserResponse")]
        bool SaveUser(LoginSignup.KuberXServiceReference.registrationmodel registration);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IRegistration/SaveUser", ReplyAction="http://tempuri.org/IRegistration/SaveUserResponse")]
        System.Threading.Tasks.Task<bool> SaveUserAsync(LoginSignup.KuberXServiceReference.registrationmodel registration);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IRegistration/GetDetails", ReplyAction="http://tempuri.org/IRegistration/GetDetailsResponse")]
        LoginSignup.KuberXServiceReference.registrationmodel GetDetails(string Official_Email);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IRegistration/GetDetails", ReplyAction="http://tempuri.org/IRegistration/GetDetailsResponse")]
        System.Threading.Tasks.Task<LoginSignup.KuberXServiceReference.registrationmodel> GetDetailsAsync(string Official_Email);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IRegistrationChannel : LoginSignup.KuberXServiceReference.IRegistration, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class RegistrationClient : System.ServiceModel.ClientBase<LoginSignup.KuberXServiceReference.IRegistration>, LoginSignup.KuberXServiceReference.IRegistration {
        
        public RegistrationClient() {
        }
        
        public RegistrationClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public RegistrationClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public RegistrationClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public RegistrationClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool SaveUser(LoginSignup.KuberXServiceReference.registrationmodel registration) {
            return base.Channel.SaveUser(registration);
        }
        
        public System.Threading.Tasks.Task<bool> SaveUserAsync(LoginSignup.KuberXServiceReference.registrationmodel registration) {
            return base.Channel.SaveUserAsync(registration);
        }
        
        public LoginSignup.KuberXServiceReference.registrationmodel GetDetails(string Official_Email) {
            return base.Channel.GetDetails(Official_Email);
        }
        
        public System.Threading.Tasks.Task<LoginSignup.KuberXServiceReference.registrationmodel> GetDetailsAsync(string Official_Email) {
            return base.Channel.GetDetailsAsync(Official_Email);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="KuberXServiceReference.IAdmin")]
    public interface IAdmin {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAdmin/ValidateAdmin", ReplyAction="http://tempuri.org/IAdmin/ValidateAdminResponse")]
        bool ValidateAdmin(LoginSignup.KuberXServiceReference.AdminModel admin);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAdmin/ValidateAdmin", ReplyAction="http://tempuri.org/IAdmin/ValidateAdminResponse")]
        System.Threading.Tasks.Task<bool> ValidateAdminAsync(LoginSignup.KuberXServiceReference.AdminModel admin);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAdmin/GetAdminDetails", ReplyAction="http://tempuri.org/IAdmin/GetAdminDetailsResponse")]
        LoginSignup.KuberXServiceReference.GetAdminDetailsModel GetAdminDetails(string adm_Official_Email);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAdmin/GetAdminDetails", ReplyAction="http://tempuri.org/IAdmin/GetAdminDetailsResponse")]
        System.Threading.Tasks.Task<LoginSignup.KuberXServiceReference.GetAdminDetailsModel> GetAdminDetailsAsync(string adm_Official_Email);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAdmin/InsertAdminFeedback", ReplyAction="http://tempuri.org/IAdmin/InsertAdminFeedbackResponse")]
        bool InsertAdminFeedback(LoginSignup.KuberXServiceReference.AdminFeedbackModel feedback);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAdmin/InsertAdminFeedback", ReplyAction="http://tempuri.org/IAdmin/InsertAdminFeedbackResponse")]
        System.Threading.Tasks.Task<bool> InsertAdminFeedbackAsync(LoginSignup.KuberXServiceReference.AdminFeedbackModel feedback);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IAdminChannel : LoginSignup.KuberXServiceReference.IAdmin, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class AdminClient : System.ServiceModel.ClientBase<LoginSignup.KuberXServiceReference.IAdmin>, LoginSignup.KuberXServiceReference.IAdmin {
        
        public AdminClient() {
        }
        
        public AdminClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public AdminClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public AdminClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public AdminClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool ValidateAdmin(LoginSignup.KuberXServiceReference.AdminModel admin) {
            return base.Channel.ValidateAdmin(admin);
        }
        
        public System.Threading.Tasks.Task<bool> ValidateAdminAsync(LoginSignup.KuberXServiceReference.AdminModel admin) {
            return base.Channel.ValidateAdminAsync(admin);
        }
        
        public LoginSignup.KuberXServiceReference.GetAdminDetailsModel GetAdminDetails(string adm_Official_Email) {
            return base.Channel.GetAdminDetails(adm_Official_Email);
        }
        
        public System.Threading.Tasks.Task<LoginSignup.KuberXServiceReference.GetAdminDetailsModel> GetAdminDetailsAsync(string adm_Official_Email) {
            return base.Channel.GetAdminDetailsAsync(adm_Official_Email);
        }
        
        public bool InsertAdminFeedback(LoginSignup.KuberXServiceReference.AdminFeedbackModel feedback) {
            return base.Channel.InsertAdminFeedback(feedback);
        }
        
        public System.Threading.Tasks.Task<bool> InsertAdminFeedbackAsync(LoginSignup.KuberXServiceReference.AdminFeedbackModel feedback) {
            return base.Channel.InsertAdminFeedbackAsync(feedback);
        }
    }
}
