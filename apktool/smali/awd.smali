.class public final Lawd;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lavo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBitmapDecoder:Lawf;

.field private final mCallbacks:[Lavy;

.field public final mRequest:Lavx;


# direct methods
.method public varargs constructor <init>(Lavx;Lawf;[Lavy;)V
    .locals 0
    .param p1    # Lavx;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # [Lavy;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Lawd;->mRequest:Lavx;

    .line 24
    iput-object p2, p0, Lawd;->mBitmapDecoder:Lawf;

    .line 25
    iput-object p3, p0, Lawd;->mCallbacks:[Lavy;

    .line 26
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 15
    iget-object v0, p0, Lawd;->mBitmapDecoder:Lawf;

    iget-object v1, p0, Lawd;->mRequest:Lavx;

    iget-object v1, v1, Lavx;->mBitmapSource:Lawh;

    iget-object v2, p0, Lawd;->mRequest:Lavx;

    iget v2, v2, Lavx;->mWidth:I

    iget-object v3, p0, Lawd;->mRequest:Lavx;

    iget v3, v3, Lavx;->mHeight:I

    iget-object v4, p0, Lawd;->mRequest:Lavx;

    iget-boolean v4, v4, Lavx;->mRequireExactDimensions:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lawf;->a(Lawh;IIZ)Lavo;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 15
    check-cast p1, Lavo;

    iget-object v1, p0, Lawd;->mCallbacks:[Lavy;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lawd;->mRequest:Lavx;

    invoke-interface {v3, p1, v4}, Lavy;->a(Lavo;Lavx;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
