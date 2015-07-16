.class final Lbbf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbf;->a(Ljava/lang/String;Lbmb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbf;

.field final synthetic val$stackTrace:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbbf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lbbf$1;->this$0:Lbbf;

    iput-object p2, p0, Lbbf$1;->val$stackTrace:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 92
    iget-object v1, p0, Lbbf$1;->val$stackTrace:Ljava/lang/String;

    sget-object v2, Lbbg;->IGNORED_METHODS:[Lbbg$a;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    iget-object v5, v4, Lbbg$a;->mClassName:Ljava/lang/String;

    iget-object v4, v4, Lbbg$a;->mMethodName:Ljava/lang/String;

    invoke-static {v5, v4}, Lbbg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ignore.$1"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lbbf$1;->this$0:Lbbf;

    invoke-virtual {v0, v1}, Lbbf;->a(Ljava/lang/String;)V

    .line 94
    return-void
.end method
