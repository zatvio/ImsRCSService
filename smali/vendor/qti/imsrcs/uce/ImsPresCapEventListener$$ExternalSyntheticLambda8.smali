.class public final synthetic Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

.field public final synthetic f$1:[Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:J

.field public final synthetic f$4:Lvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;[Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;Ljava/util/ArrayList;JLvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda8;->f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    iput-object p2, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda8;->f$1:[Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;

    iput-object p3, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda8;->f$2:Ljava/util/ArrayList;

    iput-wide p4, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda8;->f$3:J

    iput-object p6, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda8;->f$4:Lvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda8;->f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda8;->f$1:[Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;

    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda8;->f$2:Ljava/util/ArrayList;

    iget-wide v3, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda8;->f$3:J

    iget-object v5, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda8;->f$4:Lvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;

    invoke-virtual/range {v0 .. v5}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->lambda$handleCapInfoInternal$13$vendor-qti-imsrcs-uce-ImsPresCapEventListener([Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;Ljava/util/ArrayList;JLvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;)V

    return-void
.end method
