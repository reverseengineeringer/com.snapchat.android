.class final Laxn$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Laxn;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Laxn;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Laxn$1;->this$0:Laxn;

    iput-object p2, p0, Laxn$1;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 429
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Laxn$1;->val$uri:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Laxr;->a(Ljava/io/File;)V

    const/4 v0, 0x0

    return-object v0
.end method
