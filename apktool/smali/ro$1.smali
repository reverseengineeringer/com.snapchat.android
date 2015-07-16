.class final Lro$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lro;


# direct methods
.method constructor <init>(Lro;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lro$1;->this$0:Lro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lro$1;->this$0:Lro;

    invoke-static {v0}, Lro;->a(Lro;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->O()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lro$1;->this$0:Lro;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lro;->b(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->P()V

    .line 94
    iget-object v0, p0, Lro$1;->this$0:Lro;

    invoke-virtual {v0}, Lro;->a()V

    .line 95
    return-void
.end method
