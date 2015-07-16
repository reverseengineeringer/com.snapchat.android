.class public final Laga$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Lcom/snapchat/android/model/Friend;

.field b:Lcom/snapchat/android/model/Friend;

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 100
    iget-object v0, p0, Laga$c;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/Friend;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/snapchat/android/model/Friend;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v0, p0, Laga$c;->a:Lcom/snapchat/android/model/Friend;

    iput-object v0, p0, Laga$c;->b:Lcom/snapchat/android/model/Friend;

    .line 144
    invoke-virtual {p0, p1}, Laga$c;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Laga$c;->a:Lcom/snapchat/android/model/Friend;

    .line 153
    :goto_0
    iput-boolean v2, p0, Laga$c;->c:Z

    .line 154
    iput-boolean v2, p0, Laga$c;->d:Z

    .line 155
    return-void

    .line 149
    :cond_0
    iput-object p1, p0, Laga$c;->a:Lcom/snapchat/android/model/Friend;

    goto :goto_0
.end method
