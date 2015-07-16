.class public final Lbhg$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhg;
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
        "Lfu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbhg;

.field final synthetic val$callback:Lbhh;

.field final synthetic val$svgLoader:Lbhj;


# direct methods
.method public constructor <init>(Lbhg;Lbhj;Lbhh;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lbhg$1;->this$0:Lbhg;

    iput-object p2, p0, Lbhg$1;->val$svgLoader:Lbhj;

    iput-object p3, p0, Lbhg$1;->val$callback:Lbhh;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Lfu;
    .locals 4

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 38
    :try_start_0
    iget-object v1, p0, Lbhg$1;->val$svgLoader:Lbhj;

    invoke-virtual {v1}, Lbhj;->a()Lfu;
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
    invoke-static {}, Lbhg;->a()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to load SVG! Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lbhg$1;->a()Lfu;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lfu;

    iget-object v0, p0, Lbhg$1;->val$callback:Lbhh;

    invoke-interface {v0, p1}, Lbhh;->a(Lfu;)V

    return-void
.end method
