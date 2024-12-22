.class Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;
.super Ljava/lang/Object;
.source "ImsConfigServiceWrapper.java"

# interfaces
.implements Lvendor/qti/ims/configservice/V1_0/IConfigService$getRcsServiceStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->getRcsStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

.field final synthetic val$isRcsEnabled:Z


# direct methods
.method constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Z)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 880
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iput-boolean p2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;->val$isRcsEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onValues$0$vendor-qti-imsrcs-config-ImsConfigServiceWrapper$2(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 893
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$900(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling onRcsStatusReceived status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$900(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;->onRcsStatusReceived(Z)V

    .line 897
    :cond_0
    return-void
.end method

.method public onValues(IZ)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "b"    # Z

    .line 885
    if-nez p1, :cond_2

    .line 887
    if-eqz p2, :cond_0

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$700(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$700(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;->onRcsInit()V

    .line 890
    :cond_0
    iget-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;->val$isRcsEnabled:Z

    if-ne p2, v0, :cond_1

    .line 891
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$1300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 902
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling setRcsStatus status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;->val$isRcsEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$2;->val$isRcsEnabled:Z

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setRcsStatus(Z)V

    goto :goto_0

    .line 905
    :cond_2
    nop

    .line 908
    :goto_0
    return-void
.end method
