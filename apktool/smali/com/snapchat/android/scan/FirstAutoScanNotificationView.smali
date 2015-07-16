.class public Lcom/snapchat/android/scan/FirstAutoScanNotificationView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/snapchat/android/scan/FirstAutoScanNotificationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/scan/FirstAutoScanNotificationView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/snapchat/android/scan/FirstAutoScanNotificationView;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/snapchat/android/scan/FirstAutoScanNotificationView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/scan/FirstAutoScanNotificationView$1;-><init>(Lcom/snapchat/android/scan/FirstAutoScanNotificationView;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/scan/FirstAutoScanNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f0a0239

    invoke-virtual {p0, v0}, Lcom/snapchat/android/scan/FirstAutoScanNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/scan/FirstAutoScanNotificationView$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/scan/FirstAutoScanNotificationView$2;-><init>(Lcom/snapchat/android/scan/FirstAutoScanNotificationView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method
