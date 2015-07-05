.class final Lbab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbab;->a(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbab;

.field final synthetic val$endPage:Ljava/lang/String;

.field final synthetic val$isVerticalScroll:Z

.field final synthetic val$latencyList:Ljava/util/List;

.field final synthetic val$startPage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbab;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lbab$1;->this$0:Lbab;

    iput-object p2, p0, Lbab$1;->val$startPage:Ljava/lang/String;

    iput-object p3, p0, Lbab$1;->val$endPage:Ljava/lang/String;

    iput-boolean p4, p0, Lbab$1;->val$isVerticalScroll:Z

    iput-object p5, p0, Lbab$1;->val$latencyList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lbab$1;->this$0:Lbab;

    iget-object v1, p0, Lbab$1;->val$startPage:Ljava/lang/String;

    iget-object v2, p0, Lbab$1;->val$endPage:Ljava/lang/String;

    iget-boolean v3, p0, Lbab$1;->val$isVerticalScroll:Z

    iget-object v4, p0, Lbab$1;->val$latencyList:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lbab;->a(Lbab;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 87
    return-void
.end method
