.class final Lavn$c$1;
.super Laqy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavn$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lavn$c;


# direct methods
.method constructor <init>(Lavn$c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lavn$c$1;->this$1:Lavn$c;

    invoke-direct {p0, p2, p3}, Laqy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lavn$c$1;->this$1:Lavn$c;

    invoke-static {v0}, Lavn$c;->a(Lavn$c;)V

    .line 556
    return-void
.end method
