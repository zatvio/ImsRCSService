.class public final synthetic Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda7;->f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    iput-object p2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda7;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda7;->f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda7;->f$1:[B

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->lambda$handleIncomingMsg$1$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener([B)V

    return-void
.end method
