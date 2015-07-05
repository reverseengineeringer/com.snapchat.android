.class public final Lbgg$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbgg;

.field final synthetic val$callback:Lbgh;

.field final synthetic val$svgLoader:Lbgj;


# direct methods
.method public constructor <init>(Lbgg;Lbgj;Lbgh;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lbgg$1;->this$0:Lbgg;

    iput-object p2, p0, Lbgg$1;->val$svgLoader:Lbgj;

    iput-object p3, p0, Lbgg$1;->val$callback:Lbgh;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Lfl;
    .locals 5

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 38
    :try_start_0
    iget-object v1, p0, Lbgg$1;->val$svgLoader:Lbgj;

    invoke-virtual {v1}, Lbgj;->a()Lfl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    invoke-static {}, Lbgg;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to load SVG! Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lbgg$1;->a()Lfl;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lfl;

    iget-object v0, p0, Lbgg$1;->val$callback:Lbgh;

    invoke-interface {v0, p1}, Lbgh;->a(Lfl;)V

    return-void
.end method
