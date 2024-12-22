.class Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$1;
.super Ljava/lang/Object;
.source "ImsRcsSipTransportImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

.field final synthetic val$delegateObj:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;


# direct methods
.method constructor <init>(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$1;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iput-object p2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$1;->val$delegateObj:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 159
    const-string v0, ": createSipDelegate timer expired"

    const-string v1, "ImsRcsSipTransportImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$1;->val$delegateObj:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isCreateSipDelegateRequestPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string v0, ":createSipDelegate timer expired - sending on created with denied fts"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$1;->val$delegateObj:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->setIsDelegateActive(Z)V

    .line 163
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$1;->val$delegateObj:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$1;->val$delegateObj:Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$1;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    .line 164
    invoke-static {v3, v2, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$100(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;I)Landroid/util/ArraySet;

    move-result-object v1

    .line 163
    invoke-interface {v0, v2, v1}, Landroid/telephony/ims/DelegateStateCallback;->onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V

    .line 167
    :cond_0
    return-void
.end method
