.class final Laup$c$1;
.super Lapz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laup$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laup$c;


# direct methods
.method constructor <init>(Laup$c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Laup$c$1;->this$1:Laup$c;

    invoke-direct {p0, p2, p3}, Lapz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Laup$c$1;->this$1:Laup$c;

    invoke-static {v0}, Laup$c;->a(Laup$c;)V

    .line 538
    return-void
.end method
