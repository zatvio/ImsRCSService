.class Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub$1;
.super Ljava/lang/Object;
.source "IConfigService.java"

# interfaces
.implements Lvendor/qti/ims/configservice/V1_0/IConfigService$getUceStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 836
    iput-object p1, p0, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub$1;->this$0:Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub;

    iput-object p2, p0, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "uceCapInfo"    # Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;

    .line 839
    iget-object v0, p0, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 840
    iget-object v0, p0, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 841
    iget-object v0, p0, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, v0}, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 842
    iget-object v0, p0, Lvendor/qti/ims/configservice/V1_1/IConfigService$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 843
    return-void
.end method
