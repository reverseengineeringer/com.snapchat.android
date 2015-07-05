.class public final Lbac;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbac$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnrReporter"


# instance fields
.field public final mAnrDetector:Lbkz;

.field private final mCrashSampler:Lazi;

.field final mExceptionHandler:Lazp;

.field private final mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;


# direct methods
.method constructor <init>(Lazi;Lbkz;Lcom/snapchat/android/util/debug/ReleaseManager;Lazp;Landroid/content/Context;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lbac;->mCrashSampler:Lazi;

    .line 42
    iput-object p2, p0, Lbac;->mAnrDetector:Lbkz;

    .line 43
    iput-object p3, p0, Lbac;->mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 44
    iput-object p4, p0, Lbac;->mExceptionHandler:Lazp;

    .line 46
    iget-object v0, p0, Lbac;->mCrashSampler:Lazi;

    invoke-virtual {v0}, Lazi;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->d()Z

    move-result v0

    .line 48
    new-instance v1, Lbaf;

    const-string v2, "c06b8797877eb662616000c11de0d338"

    invoke-direct {v1, p5, v2, v0}, Lbaf;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 49
    iget-object v0, p0, Lbac;->mAnrDetector:Lbkz;

    invoke-virtual {v0, v1}, Lbkz;->a(Lblb;)V

    .line 51
    iget-object v0, p0, Lbac;->mAnrDetector:Lbkz;

    new-instance v1, Lbae;

    invoke-direct {v1}, Lbae;-><init>()V

    invoke-virtual {v0, v1}, Lbkz;->a(Lblb;)V

    .line 54
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lbac;->mAnrDetector:Lbkz;

    new-instance v1, Lbac$a;

    const/4 v2, 0x0

    invoke-direct {v1, p5, v2}, Lbac$a;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v0, v1}, Lbkz;->a(Lblb;)V

    .line 58
    :cond_1
    iget-object v0, p0, Lbac;->mAnrDetector:Lbkz;

    new-instance v1, Lbac$1;

    invoke-direct {v1, p0}, Lbac$1;-><init>(Lbac;)V

    invoke-virtual {v0, v1}, Lbkz;->a(Lblb;)V

    .line 65
    iget-object v0, p0, Lbac;->mAnrDetector:Lbkz;

    new-instance v1, Lbac$2;

    invoke-direct {v1, p0}, Lbac$2;-><init>(Lbac;)V

    iput-object v1, v0, Lbkz;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 72
    return-void
.end method
