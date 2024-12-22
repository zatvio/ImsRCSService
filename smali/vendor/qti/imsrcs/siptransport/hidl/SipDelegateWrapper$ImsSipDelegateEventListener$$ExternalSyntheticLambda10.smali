.class public final synthetic Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda10;->f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    iput p2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda10;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda10;->f$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda10;->f$1:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->lambda$handleOnEventReceived$3$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener(I)V

    return-void
.end method
