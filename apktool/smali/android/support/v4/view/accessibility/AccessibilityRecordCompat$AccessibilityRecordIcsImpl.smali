.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAddedCount(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 281
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getAddedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 286
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 291
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 296
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentItemIndex(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 301
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getCurrentItemIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getFromIndex(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 306
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getFromIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getItemCount(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 311
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getItemCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 316
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final getRemovedCount(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 321
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getRemovedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getScrollX(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 326
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getScrollX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getScrollY(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 331
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getScrollY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getSource(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .prologue
    .line 336
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getSource(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public final getText(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getText(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getToIndex(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 347
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getToIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getWindowId(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 352
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getWindowId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isChecked(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 357
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isChecked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEnabled(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 362
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isFullScreen(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 367
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isFullScreen(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isPassword(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 372
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isPassword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isScrollable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 377
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isScrollable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->obtain()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 276
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final recycle(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 382
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->recycle(Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method public final setAddedCount(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 387
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setAddedCount(Ljava/lang/Object;I)V

    .line 388
    return-void
.end method

.method public final setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 392
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 393
    return-void
.end method

.method public final setChecked(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 397
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setChecked(Ljava/lang/Object;Z)V

    .line 398
    return-void
.end method

.method public final setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 402
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 403
    return-void
.end method

.method public final setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 407
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 408
    return-void
.end method

.method public final setCurrentItemIndex(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 412
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setCurrentItemIndex(Ljava/lang/Object;I)V

    .line 413
    return-void
.end method

.method public final setEnabled(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 417
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setEnabled(Ljava/lang/Object;Z)V

    .line 418
    return-void
.end method

.method public final setFromIndex(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 422
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setFromIndex(Ljava/lang/Object;I)V

    .line 423
    return-void
.end method

.method public final setFullScreen(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 427
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setFullScreen(Ljava/lang/Object;Z)V

    .line 428
    return-void
.end method

.method public final setItemCount(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 432
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setItemCount(Ljava/lang/Object;I)V

    .line 433
    return-void
.end method

.method public final setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 437
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V

    .line 438
    return-void
.end method

.method public final setPassword(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 442
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setPassword(Ljava/lang/Object;Z)V

    .line 443
    return-void
.end method

.method public final setRemovedCount(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 447
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setRemovedCount(Ljava/lang/Object;I)V

    .line 448
    return-void
.end method

.method public final setScrollX(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 452
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollX(Ljava/lang/Object;I)V

    .line 453
    return-void
.end method

.method public final setScrollY(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 457
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollY(Ljava/lang/Object;I)V

    .line 458
    return-void
.end method

.method public final setScrollable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 462
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollable(Ljava/lang/Object;Z)V

    .line 463
    return-void
.end method

.method public final setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 467
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    .line 468
    return-void
.end method

.method public final setToIndex(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 472
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setToIndex(Ljava/lang/Object;I)V

    .line 473
    return-void
.end method
