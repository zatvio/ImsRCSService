.class Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$3;
.super Ljava/lang/Object;
.source "SipTransportHidlServiceWrapper.java"

# interfaces
.implements Lvendor/qti/ims/rcssip/V1_0/ISipTransportService$createConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;->createConnection(Ljava/lang/String;Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

.field final synthetic val$mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;


# direct methods
.method constructor <init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$3;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper;

    iput-object p2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$3;->val$mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILvendor/qti/ims/rcssip/V1_0/ISipConnection;J)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "iSipConnection"    # Lvendor/qti/ims/rcssip/V1_0/ISipConnection;
    .param p3, "l"    # J

    .line 165
    const-string v0, "SipTransportHidlServiceWrapper"

    const-string v1, ": createConnectionCallback onValues"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$3;->val$mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;

    invoke-virtual {v0, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->setHidlSipConnection(Lvendor/qti/ims/rcssip/V1_0/ISipConnection;)V

    .line 168
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportHidlServiceWrapper$3;->val$mSipDelegateWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;

    invoke-virtual {v0, p3, p4}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->setConnectionHandle(J)V

    .line 169
    return-void
.end method
