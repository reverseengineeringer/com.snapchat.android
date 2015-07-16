.class public final Lpf;
.super Lul;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lul;",
        "Lui$b",
        "<",
        "Lpf$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "/shared/description"

.field private static final TASK_NAME:Ljava/lang/String; = "GetSharedStoryDescriptionTask"


# instance fields
.field mSharedStoryId:Ljava/lang/String;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0}, Lpf;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lul;-><init>()V

    .line 39
    iput-object p1, p0, Lpf;->mSharedStoryId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lpf;->mUiHandler:Landroid/os/Handler;

    .line 41
    const-class v0, Lpf$a;

    invoke-virtual {p0, v0, p0}, Lpf;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final getMethod()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/shared/description"

    invoke-static {v1}, Lbal;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/shared/description?shared_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpf;->mSharedStoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ln="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 3

    .prologue
    .line 25
    check-cast p1, Lpf$a;

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lpf;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lpf$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lpf$1;-><init>(Lpf;Lpf$a;Lus;Lakp;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
