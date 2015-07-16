.class public final Laxb;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laxb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lawm;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBitmapDecoder:Laxd;

.field private final mCallbacks:[Laww;

.field public final mRequest:Lawv;


# direct methods
.method public varargs constructor <init>(Lawv;Laxd;[Laww;)V
    .locals 0
    .param p1    # Lawv;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # [Laww;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Laxb;->mRequest:Lawv;

    .line 24
    iput-object p2, p0, Laxb;->mBitmapDecoder:Laxd;

    .line 25
    iput-object p3, p0, Laxb;->mCallbacks:[Laww;

    .line 26
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 15
    iget-object v0, p0, Laxb;->mBitmapDecoder:Laxd;

    iget-object v1, p0, Laxb;->mRequest:Lawv;

    iget-object v1, v1, Lawv;->mBitmapSource:Laxf;

    iget-object v2, p0, Laxb;->mRequest:Lawv;

    iget v2, v2, Lawv;->mWidth:I

    iget-object v3, p0, Laxb;->mRequest:Lawv;

    iget v3, v3, Lawv;->mHeight:I

    iget-object v4, p0, Laxb;->mRequest:Lawv;

    iget-boolean v4, v4, Lawv;->mRequireExactDimensions:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Laxd;->a(Laxf;IIZ)Lawm;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 15
    check-cast p1, Lawm;

    iget-object v1, p0, Laxb;->mCallbacks:[Laww;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Laxb;->mRequest:Lawv;

    invoke-interface {v3, p1, v4}, Laww;->a(Lawm;Lawv;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
