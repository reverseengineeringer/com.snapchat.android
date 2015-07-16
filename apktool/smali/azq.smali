.class public final Lazq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbvp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbvp",
        "<",
        "Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lazj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lazq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lazq;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lazj;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-boolean v0, Lazq;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13
    :cond_0
    iput-object p1, p0, Lazq;->module:Lazj;

    .line 14
    return-void
.end method

.method public static a(Lazj;)Lbvp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazj;",
            ")",
            "Lbvp",
            "<",
            "Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lazq;

    invoke-direct {v0, p0}, Lazq;-><init>(Lazj;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;-><init>()V

    return-object v0
.end method
