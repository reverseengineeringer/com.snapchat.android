.class final Lqy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lqy;


# direct methods
.method constructor <init>(Lqy;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lqy$1;->this$0:Lqy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    const-string v0, "PhoneNumberBlocker"

    const-string v1, "CASH-LOG: PhoneNumberBlocker VERIFICATION COMPLETE"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lqy$1;->this$0:Lqy;

    invoke-static {v0}, Lqy;->a(Lqy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->O()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lqy$1;->this$0:Lqy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lqy;->b(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->P()V

    .line 94
    iget-object v0, p0, Lqy$1;->this$0:Lqy;

    invoke-virtual {v0}, Lqy;->a()V

    .line 95
    return-void
.end method
