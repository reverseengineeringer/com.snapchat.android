.class public final Lakb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbvk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbvk",
        "<",
        "Laka;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lbhk;",
            ">;"
        }
    .end annotation
.end field

.field private final supertypeInjector:Lbvk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbvk",
            "<",
            "Lcom/snapchat/android/model/Snap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lakb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lakb;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lbvk;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvk",
            "<",
            "Lcom/snapchat/android/model/Snap;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lbhk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-boolean v0, Lakb;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 15
    :cond_0
    iput-object p1, p0, Lakb;->supertypeInjector:Lbvk;

    .line 16
    sget-boolean v0, Lakb;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_1
    iput-object p2, p0, Lakb;->mClockProvider:Ljavax/inject/Provider;

    .line 18
    return-void
.end method

.method public static a(Lbvk;Ljavax/inject/Provider;)Lbvk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvk",
            "<",
            "Lcom/snapchat/android/model/Snap;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lbhk;",
            ">;)",
            "Lbvk",
            "<",
            "Laka;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lakb;

    invoke-direct {v0, p0, p1}, Lakb;-><init>(Lbvk;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 8
    check-cast p1, Laka;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lakb;->supertypeInjector:Lbvk;

    invoke-interface {v0, p1}, Lbvk;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lakb;->mClockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhk;

    iput-object v0, p1, Laka;->mClock:Lbhk;

    return-void
.end method
