.class Lvendor/qti/ims/configservice/V1_0/IConfigService$Stub$2;
.super Ljava/lang/Object;
.source "IConfigService.java"

# interfaces
.implements Lvendor/qti/ims/configservice/V1_0/IConfigService$getRcsServiceStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/ims/configservice/V1_0/IConfigService$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/ims/configservice/V1_0/IConfigService$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/qti/ims/configservice/V1_0/IConfigService$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/ims/configservice/V1_0/IConfigService$Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 983
    iput-object p1, p0, Lvendor/qti/ims/configservice/V1_0/IConfigService$Stub$2;->this$0:Lvendor/qti/ims/configservice/V1_0/IConfigService$Stub;

    iput-object p2, p0, Lvendor/qti/ims/configservice/V1_0/IConfigService$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(IZ)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "isRcsEnabled"    # Z

    .line 986
    iget-object v0, p0, Lvendor/qti/ims/configservice/V1_0/IConfigService$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 987
    iget-object v0, p0, Lvendor/qti/ims/configservice/V1_0/IConfigService$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 988
    iget-object v0, p0, Lvendor/qti/ims/configservice/V1_0/IConfigService$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 989
    iget-object v0, p0, Lvendor/qti/ims/configservice/V1_0/IConfigService$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 990
    return-void
.end method
