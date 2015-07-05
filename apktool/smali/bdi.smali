.class public final Lbdi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final friend:Lcom/snapchat/android/model/Friend;

.field public final isInRecentUpdates:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/Friend;Z)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lbdi;->friend:Lcom/snapchat/android/model/Friend;

    .line 11
    iput-boolean p2, p0, Lbdi;->isInRecentUpdates:Z

    .line 12
    return-void
.end method
